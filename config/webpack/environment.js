const { environment } = require('@rails/webpacker')

module.exports = environment

//NOTE: you may need to uncomment it if ever need jquery back in your components
// const { environment } = require('@rails/webpacker')
// const webpack = require('webpack')
//
// module.exports = environment
//
// environment.plugins.prepend(
//   'Provide',
//   new webpack.ProvidePlugin({
//     $: 'jquery',
//     jQuery: 'jquery',
//     jquery: 'jquery'
//   })
// )