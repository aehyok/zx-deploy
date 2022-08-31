const http = require("http");

const port1 = 91

const server1 = http
  .createServer(function (req, res) {
    console.log(`Request: ${req.url}--port ${port1}`);
    res.end(`hello world! - ${port1}`);
  })
  .listen(port1, "127.0.0.1");

server1.once("listening", () => {
  console.log(`Server http://127.0.0.1:${port1}`);
});


const port2 = 92
const server2 = http
  .createServer(function (req, res) {
    console.log(`Request: ${req.url}--port ${port2}`);
    res.end(`hello world! - ${port2}`);
  })
  .listen(port2, "127.0.0.1");

server2.once("listening", () => {
  console.log(`Server http://127.0.0.1:${port2}`);
});
