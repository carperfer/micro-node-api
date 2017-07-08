var express = require('express');

var RED = require('node-red');
var http = require('http');
var app = express();

// modelos
var Models = require('./models/models.js');

// NODE-RED
// Create a server

var server = http.createServer(app);

var settings = {
    httpAdminRoot:"/red",
    httpNodeRoot: "/",
    uiPort:3000,
    functionGlobalContext :{
        model: Models
    }    // enables global context
};

// Initialise the runtime with a server and settings
RED.init(server,settings);

// Serve the editor UI from /red
app.use(settings.httpAdminRoot,RED.httpAdmin);

// Serve the http nodes UI from /api
app.use(settings.httpNodeRoot,RED.httpNode);

server.listen(3000);

// Start the runtime
RED.start();

// Demo /test da un listado de cleintes
app.use('/test', function (req, res, next) {
  Models.get_clients(function(error, rows){
      res.send(rows);
  });
});