var mysql = require('mysql');

var db = mysql.createConnection({
  host: process.env.host,
  user: process.env.user,
  password: process.env.password,
  database: process.env.database
});

setTimeout(function(){
    db.connect(function(err) {
    if (err) throw err;
});
}, 2000);


module.exports = db;