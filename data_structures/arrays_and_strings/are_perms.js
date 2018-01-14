function arePerms(str1, str2) {
  if (str1.length !== str2.length) {
    return false;
  }
  let chars1 = str1.split("");
  let chars2 = str2.split("");
  let counts1 = {};
  let counts2 = {};
  
  for (let i = 0; i < chars1.length; i++) {
    if (counts1[chars1[i]]) {
      counts1[chars1[i]] += 1;
    } else {
      counts1[chars1[i]] = 1;
    }
  }
  
  for (let i = 0; i < chars2.length; i++) {
    if (counts2[chars2[i]]) {
      counts2[chars2[i]] += 1;
    } else {
      counts2[chars2[i]] = 1;
    }
  }
  
  for (const key in counts1) {
    if (counts1[key] !== counts2[key]) {
      return false;
    }
  }
  
  return true;
}

// Time complexity: O(n)
// Space complexity: O(n)
// This is pretty lengthy but avoids sorting O(n log n)