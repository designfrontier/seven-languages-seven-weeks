'use strict';

const events = require('monument').events
    , games = {};

events.on('data:create:game', (details) => {
    const gameid = details.uuid;

    games[gameid] = {
        startTime: new Date()
        , moves: 0
        , positions: [
            [ 0, 0, 0 ]
            , [ 0, 0, 0 ]
            , [ 0, 0, 0 ]
        ]
    };

    events.emit(`data:created:game:${gameid}`, true);
});

events.on('data:move:game', (move) => {

});
