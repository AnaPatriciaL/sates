const { defineConfig } = require("@vue/cli-service");
module.exports = defineConfig({
  transpileDependencies: ["vuetify"],
  publicPath: "/siga/", // Define una sola vez el publicPath
  lintOnSave: false,

});