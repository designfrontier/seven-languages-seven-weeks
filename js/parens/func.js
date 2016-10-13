'use strict';

const permute = (open, close = 0) => {

  if (open === 0 && close === 0) {
    return 1;
  } else if (open < 0 || close < 0) {
    return 0;
  }

  return  permute(open - 1, close + 1) + permute(open, close - 1);
};

console.log(permute(process.argv.pop()));
