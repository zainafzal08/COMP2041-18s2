function emitter() {
  let count = 0;
  return function () {
    return count++;
  }
}

let counter = emitter();
console.log(counter());
console.log(counter());
console.log(counter());
console.log(counter());
