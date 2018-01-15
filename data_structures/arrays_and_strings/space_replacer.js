function spaceReplacer(str) {
  let chars = str.trim().split("");
  for (let i = 0; i < chars.length; i++) {
    if (chars[i] === " ") {
      chars[i] = "%20";
    }
  }
  return chars.join("");
}

// Initial mistakes: Forgot to call trim by adding ()