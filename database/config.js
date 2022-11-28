const mysql = require('mysql2')

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'amjor',
    password: ''
});

module.exports = connection