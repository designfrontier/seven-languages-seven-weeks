const iterativeSolve = (pairs = 0) => {
  const validString = [];
  const building = [];

  for (let i = 0; i < pairs * 2; i++) {
    if (i === 0) {
      building.push({string: '(', stacks: [pairs - 1, 1]});
    } else {
      for (let j = 0; j < building.length; j++) {
        const [open, close] = building[j].stacks;

        if (building[j].string.length < i - 1 || building[j].stacks[0] < 0 || building[j].stacks[1] < 0) {
          building.splice(j, 1);
          continue;
        }

        if(open > 0) {
          building[j] = { string: building[j].string + '(', stacks: [open - 1, close + 1] };
        }
        if(close > 0) {
          building.push({ string: building[j].string + ')', stacks: [open, close - 1] });
        }
      }
    }
  }

  return building.filter((s) => s.stacks[0] === 0 && s.stacks[1] === 0).length;
}

console.log(iterativeSolve(13))