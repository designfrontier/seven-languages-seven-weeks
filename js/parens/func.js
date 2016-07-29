'use strict';
const iters = process.argv.pop();

const permute = (openCount, closeCount) => {

  if (openCount === 0 && closeCount === 0) {
    return 1;
  } else if (openCount < 0 || closeCount < 0) {
    return 0;
  }

  return  permute(openCount - 1, closeCount + 1) +
    permute(openCount, closeCount - 1);
};

console.log(permute(iters, 0));
