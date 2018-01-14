function isUniq(str) {
  const letters = str.split("");
  let counts = {};
  for (let i = 0; i < letters.length; i++) {
    if (counts[letters[i].toLowerCase()]) {
      return false;
    } else {
      counts[letters[i].toLowerCase()] = 1;
    }
  }
  return true;
}

