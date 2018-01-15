function zeroMatrix(mtx) {
  let rows = [];
  let cols = [];
  for (let i = 0; i < mtx.length; i++) {
    for (let j = 0; j < mtx[i].length; j++) {
      if (mtx[i][j] === 0) {
        rows.push(i);
        cols.push(j);
      }
    }
  }
  for (let i = 0; i < mtx.length; i++) {
    for (let j = 0; j < mtx[i].length; j++) {
      if (rows.includes(i) || cols.includes(j)) {
        mtx[i][j] = 0;
      }
    }
  }
  return mtx;
}

let mtx = [
  [5, 2, 4, 1],
  [4, 2, 1, 0],
  [0, 9, 1, 2]
];