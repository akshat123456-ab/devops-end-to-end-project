const http = require("http");

const server = http.createServer((req, res) => {

 console.log("Request received at " + new Date());

 res.end("DevOps Project Running");

});

server.listen(3000, () => {
 console.log("Server running on port 3000");
});
