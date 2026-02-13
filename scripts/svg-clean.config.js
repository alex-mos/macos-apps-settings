export default {
  multipass: true,
  plugins: [
    {
      name: "preset-default",
      params: {
        overrides: {
          convertPathData: false,
          mergePaths: false,
          collapseGroups: false,
          convertShapeToPath: false
        }
      }
    },
    {
      name: "removeDimensions",
    },
    {
      name: "removeEditorsNSData",
    },
    {
      name: "removeMetadata",
    },
    {
      name: "removeComments",
    },
    {
      name: "removeViewBox",
      active: false
    },
  ]
}
