const express = require('express');
const app = express();
const http = require('http').Server(app);
const io = require('socket.io')(http);
const path = require('path');

// app.get('/', function(req, res){
//   res.sendFile(path.resolve(__dirname, './client/index.html'));
// });
app.use(express.static(path.resolve(__dirname, './client/')));

http.listen(3000, function(){
  console.log('debugger listening on *:3000');
});

module.exports = function(memory) {
  io.on('connection', function(socket){
    socket.emit('state', memory);
  });
  
  io.sockets.emit('state', memory);
}