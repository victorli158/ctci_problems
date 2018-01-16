function isSubstring(str1, str2) {
  for (let i = 0; i < str1.length; i++) {
    if (str1[i] === str2[0]) {
      if (str1.slice(i, i + str2.length) === str2) {
        return true;
      }
    }
  }
  return false;
}

// Originally I had a check for length to make sure the substring
// wouldn't go past the length of the longer string.
// Apparently with slice, it just defaults back to the length anyway so it's ok.

function isRotation(str1, str2) {
  if (str1.length !== str2.length || str1.length === 0) {
    return false;
  }
  let doubleString = str1 + str1;
  return isSubstring(doubleString, str2);
}