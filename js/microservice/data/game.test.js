/* eslint-env node, mocha */
'use strict';

const assert = require('chai').assert
    , events = require('monument').events;

require('./game.js');

describe('game Handler tests', () => {
    it('should respond to data:get:game', (done) => {
        events.once('data:set:game', (data) => {
            assert.isObject(data);
            done();
        });

        events.emit('data:get:game');
    });
});