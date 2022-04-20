// a and b only
// no sequence of notes repeats more than twice
const seeker = (song = '', branches = [], maxLength = 0) => {
  const notes = ['a', 'b'];
  const valid = validate(notes.map((n) => song + n));

  if (branches.length === 0 && valid.length === 0) {
    return song;
  }

  if (valid.length === 0) {
    return seeker(branches.pop(), branches, maxLength);
  }

  if(valid[0].length > maxLength) {
    maxLength = valid[0].length;
    if (maxLength % 50 === 0 || (maxLength > 1500 && maxLength % 10 === 0)) {
      console.log('new longest song: ', maxLength);
    }
  }

  return seeker(valid.pop(), [].concat(branches.slice(-100), valid), maxLength);
}

const validate = (songs) => {
  return songs.filter((song) => {
    for(let i = 0; i < song.length; i++) {
      const maxWindowLength = Math.floor((song.length / 3) + i);

      for(let win = 0; win <= maxWindowLength; win++) {
        // starting at i check to see if there are repeats of a sequence three times
        const seq = song.substr(i, win);
        const seq2 = song.substr(i + win, win);
        const seq3 = song.substr(i + (2 * win), win);

        if (seq === seq2 && seq === seq3 && seq.length > 0) {
          return false;
        }
      }
    }

    return true;
  });
}

seeker();