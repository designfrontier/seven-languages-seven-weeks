const iterativeSolve = (pairs = 0) => {
  const building = [];
  for (let i = 0; i < pairs * 2; i++) {
    if (i === 0) {
      building.push([pairs - 1, 1]);
    } else {
      building.forEach((s, idx, arr) => {
        const [open, close] = s;

        if(open > 0) {
          arr[idx] = [open - 1, close + 1];
        }
        if(close > 0) {
          arr.push([open, close - 1] );
        }
      })
    }
  }

  return building.filter((s) => s[0] === 0 && s[1] === 0).length;
}

console.log(iterativeSolve(1))