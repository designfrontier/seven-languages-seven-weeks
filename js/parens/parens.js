'use strict';

const bigInt = require('big-integer');
const fs = require('fs');
const strings = fs.createWriteStream('stringPremutations.txt');

let perms = 0;

const permute = (openCount, closeCount, str) => {
  if (openCount === 0 && closeCount === 0) {
    perms = bigInt(perms).plus(1);
    strings.write(str + '\n');
  }

  if (openCount > 0) {
    permute(openCount - 1, closeCount + 1, str + '(');
  }

  if (closeCount > 0) {
    permute(openCount, closeCount - 1, str + ')');
  }
};

permute(process.argv.pop(), 0, '');

process.on('beforeExit', () => {
  strings.end();
  console.log(perms.toString());
});
