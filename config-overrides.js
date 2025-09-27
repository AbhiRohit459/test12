const webpack = require('webpack');

module.exports = function override(config, env) {
  // You can still tweak webpack config here if needed
  return config;
};

module.exports.devServer = function (configFunction) {
  return function (proxy, allowedHost) {
    const config = configFunction(proxy, allowedHost);

    // ✅ Correct way to set allowedHosts
    config.allowedHosts = ['localhost', '127.0.0.1']; // or "all"
    config.host = 'localhost';
    config.port = 3000;

    return config;
  };
};
