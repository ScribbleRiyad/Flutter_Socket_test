const  express = require('express');
const app = express();
const Port = process.env.PORT || 4000;
const server  = app.listen(Port,()=>{
    console.log(`Server is running on port ${Port}`);
});
const io = require('socket.io')(server);
io.on('connection', (socket) =>{
    console.log('a user connected', socket.id);
});