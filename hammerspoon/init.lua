local layoutMap = {
    a = "ф", b = "и", c = "с", d = "в", e = "у", f = "а", g = "п", h = "р", i = "ш",
    j = "о", k = "л", l = "д", m = "ь", n = "т", o = "щ", p = "з", q = "й", r = "к",
    s = "ы", t = "е", u = "г", v = "м", w = "ц", x = "ч", y = "н", z = "я",
}

local reverseLayoutMap = {}
for lat, rus in pairs(layoutMap) do
    reverseLayoutMap[rus] = lat
end

local commandList = {
    { keys = { "f1,s,t" }, action = function() hs.application.launchOrFocus("Sublime Text") end },
    { keys = { "f1,s,m" }, action = function() hs.application.launchOrFocus("Sublime Merge") end },
    { keys = { "f1,o" }, action = function() hs.application.launchOrFocus("Obsidian") end },
    { keys = { "f1,b" }, action = function() hs.application.launchOrFocus("Brave Browser") end },
    { keys = { "f1,t,e" }, action = function() hs.application.launchOrFocus("Telegram") end },
    { keys = { "f1,t,r" }, action = function() hs.application.launchOrFocus("Transmission") end },
    { keys = { "f1,t,h" }, action = function() hs.application.launchOrFocus("Things 3") end },
    { keys = { "f1,f" }, action = function() hs.application.launchOrFocus("Finder") end },
    { keys = { "f1,i" }, action = function() hs.application.launchOrFocus("iTerm") end },
    { keys = { "f1,n,n" }, action = function() hs.application.launchOrFocus("NetNewsWire") end },
    { keys = { "f1,n,u" }, action = function() hs.application.launchOrFocus("Numi") end },
    { keys = { "f1,c" }, action = function() hs.application.launchOrFocus("Calendar") end },
    { keys = { "f1,d,i,c" }, action = function() hs.application.launchOrFocus("Dictionary") end },
    { keys = { "f1,d,i,a" }, action = function() hs.execute("source ~/.zprofile && ~/scripts/diary", true) end },
    { keys = { "f1,m,a" }, action = function() hs.application.launchOrFocus("Mail") end },
    { keys = { "f1,m,u" }, action = function() hs.application.launchOrFocus("Music") end }
}

local function addCyrillicVariants(list)
    local result = {}
    for _, cmd in ipairs(list) do
        local allKeys = {}
        for _, seq in ipairs(cmd.keys) do
            table.insert(allKeys, seq)
            local cyrSeq = seq:gsub("[^,]+", function(k)
                return layoutMap[k] or k
            end)
            if cyrSeq ~= seq then
                table.insert(allKeys, cyrSeq)
            end
        end
        table.insert(result, { keys = allKeys, action = cmd.action })
    end
    return result
end

commandList = addCyrillicVariants(commandList)

local commands = {}
for _, cmd in ipairs(commandList) do
    for _, seq in ipairs(cmd.keys) do
        commands[seq] = cmd.action
    end
end

local sequence = {}
local captureMode = false
local lastKeyPressed = ""

local overlaySize = 150
local circleSize = 50

local screenFrame = hs.screen.mainScreen():frame()
local overlay = hs.drawing.rectangle(hs.geometry.rect(
    (screenFrame.w - overlaySize) / 2,
    (screenFrame.h - overlaySize) / 2,
    overlaySize, overlaySize
))
overlay:setFillColor({ red = 0.9, green = 0.9, blue = 0.9, alpha = 1 }) -- светло-серый
overlay:setStroke(false)
overlay:setRoundedRectRadii(20, 20)

local circleSize = overlaySize * 0.5 -- теперь половина квадрата

local circle = hs.drawing.circle(hs.geometry.rect(
    (screenFrame.w - circleSize) / 2,
    (screenFrame.h - circleSize) / 2,
    circleSize, circleSize
))
circle:setFillColor({ red = 0, green = 0, blue = 0, alpha = 0.25 }) -- полупрозрачный чёрный
circle:setStroke(false)

local text = hs.drawing.text(hs.geometry.rect(
    (screenFrame.w - overlaySize) / 2,
    (screenFrame.h - overlaySize) / 2 + 40,  -- сдвигаем вниз на 12 пикселей
    overlaySize, overlaySize
), "")
text:setTextColor({ red = 0.2, green = 0.2, blue = 0.2, alpha = 1 })
text:setTextSize(52)
text:setTextStyle({ alignment = "center", lineBreak = "truncateMiddle" })

local function showOverlay()
    overlay:show()
    text:show()
end

local function hideOverlay()
    overlay:hide()
    circle:hide()
    text:hide()
end

local function resetSequence()
    sequence = {}
    captureMode = false
    lastKeyPressed = ""
    hideOverlay()
end

local function isTextInputFocused()
    local app = hs.application.frontmostApplication()
    if not app then return false end
    local win = app:focusedWindow()
    if not win then return false end
    local role = win:role()
    local subrole = win:subrole()
    if role == "AXTextField" or role == "AXTextArea" or role == "AXScrollArea" or
       subrole == "AXTextField" or subrole == "AXTextArea" then
        return true
    end
    return false
end

local function getDisplayKey(key)
    if reverseLayoutMap[key] then
        return reverseLayoutMap[key]
    end
    return key
end

local eventtap = hs.eventtap.new({ hs.eventtap.event.types.keyDown }, function(event)
    local key = hs.keycodes.map[event:getKeyCode()]
    if not key then return false end

    if isTextInputFocused() and not captureMode then
        return false
    end

    if key == "f1" then
        if captureMode then
            resetSequence()
        else
            resetSequence()
            captureMode = true
            table.insert(sequence, "f1")
            lastKeyPressed = ""
            text:setText("")
            circle:show()
            showOverlay()
        end
        return true

    elseif key == "escape" and captureMode then
        resetSequence()
        return true

    elseif captureMode then
        table.insert(sequence, key)
        lastKeyPressed = getDisplayKey(key)
        text:setText(lastKeyPressed)
        showOverlay()
        if #sequence > 1 then
            circle:hide()
        end

        local seqString = table.concat(sequence, ",")
        if commands[seqString] then
            commands[seqString]()
            resetSequence()
        end
        return true
    end

    return false
end):start()
