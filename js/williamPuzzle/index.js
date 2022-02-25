const { PNG } = require('pngjs');
const fs = require('fs');

fs.createReadStream('puzzle.png')
  .pipe(new PNG({ filterType: 4}))
  .on('parsed', function () {
    console.log(this);
  })