/** restomodel.js **/
var db = require('./database');

var Model = {
    get_clients: function (callback) {
        return db.query("SELECT * FROM clients", callback);
    }
};

module.exports = Model;


