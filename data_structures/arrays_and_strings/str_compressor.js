function strCompressor(str) {
  let chars = str.split("");
  let compressedStr = "";
  let count = 1;
  for (let i = 0; i < chars.length - 1; i++) {
    if (chars[i] !== chars[i + 1]) {
      compressedStr += chars[i] + count;
      count = 1;
    } else if (i === chars.length - 2) {
      count += 1;
      compressedStr += chars[i] + count;
    } else {
      count += 1;
    }
  }
  return compressedStr.length < str.length ? compressedStr : str;
}

// Not the most elegant solution for dealing with that last letter, may revisit later