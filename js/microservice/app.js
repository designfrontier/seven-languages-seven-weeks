'use strict';
const monument = require('monument')
    , defaultPort = 3000;
require('./data/game.js');
monument.server({
    routePath: './routes'
    , templatePath: './templates'
    , publicPath: './public'
    , port: process.env.PORT || defaultPort
});