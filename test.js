// const readLineSync = require('readline-sync');

// const value = readLineSync.question('Test');

// console.log(value);

function permute(permutation) {
  var length = permutation.length,
      result = [permutation.slice()],
      c = new Array(length).fill(0),
      i = 1, k, p;

  while (i < length) {
    if (c[i] < i) {
      k = i % 2 && c[i];
      p = permutation[i];
      permutation[i] = permutation[k];
      permutation[k] = p;
      ++c[i];
      i = 1;
      result.push(permutation.slice());
    } else {
      c[i] = 0;
      ++i;
    }
  }
  return result;
}

const a = 2,
      b = 3,
      c = 5,
      d = 7;
      e = 9;
const list = [a, b, c, d, e];

permute(list).forEach((permutation) => {
  const result =
    permutation[0]
    + permutation[1]
    * Math.pow(permutation[2], 2)
    + Math.pow(permutation[3], 3)
    - permutation[4];
  if (result === 399) {
    console.log(permutation);
  }
});

// const result = a + b + Math.pow(c, 2) + Math.pow(d, 3) - e;

// console.log(result);