process.stdin.resume();
process.stdin.setEncoding("utf8");

var lines = [];
var reader = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});
reader.on("line", (line) => {
  lines.push(line);
});
reader.on("close", () => {
  for (let i = 0; i < lines[0]; i++) {
    console.log(lines[i + 1]);
  }
});


process.stdin.resume();
process.stdin.setEncoding("utf8");

var lines = [];
var reader = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});
reader.on("line", (line) => {
  lines.push(line);
});
reader.on("close", () => {
  a = lines[0].split(" ");
  a.forEach((element) => console.log(element));
});


// 少数
process.stdin.resume();
process.stdin.setEncoding("utf8");

var lines = [];
var reader = require("readline").createInterface({
  input: process.stdin,
  output: process.stdout,
});
reader.on("line", (line) => {
  lines.push(line);
});
reader.on("close", () => {
  a = lines[0].split(" ").map(Number);
  console.log(a[0] * (100 - a[1]) * 0.01 * (100 - a[2]) * 0.01);
});
