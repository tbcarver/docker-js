const uuidV4 = require('uuid').v4;

console.log('app started');
console.log(uuidV4());

for (const key in process.env) {
  console.log(key, process.env[key]);
}

console.log('app exiting');