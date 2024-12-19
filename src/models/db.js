const {Pool} = require('pg');


// to create a database either her or through postbird 

const pool = new Pool (
    {
        user: 'may',
        host: 'localhost',
        database: 'postgres',
        port: 5432 // Default PostgreSQL port
    }
);

module.exports = pool;
