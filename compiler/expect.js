module.exports = function expect(description, value, condition) {
  if (value !== condition) {
    console.error(`Expected value for ${ description } to be ${ value }, but it was ${ condition }`);
    process.exit(1);
  }
};