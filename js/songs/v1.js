// a and b only
// no sequence of notes repeats more than twice

const seeker = (song = '', branches = []) => {
  const notes = ['a', 'b'];
  const valid = validate(notes.map((n) => song + n));

  if (branches.length === 0 && valid.length === 0) {
    return song;
  }

  if (valid.length === 0) {
    return seeker(branches.pop(), branches);
  }

  return seeker(valid.pop(), [].concat(branches, valid));
}

const validate = (songs) => {
  return songs.filter((song) => {

  });
}