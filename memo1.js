split(" ").map(s => parseInt(s))

// 配列を数字にして半角で切り分けて入れる方法

// 繰り返し取得する方法
var lines = [];
var reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  lines.push(line);
});
reader.on('close', () => {
  for (let i = 1; i < 5; i++) {
    console.log(lines[i] - lines[i - 1]);
  }
});
