import { createConnection } from 'mysql';
import { faker } from '@faker-js/faker';

var connection = createConnection({
    host: '127.0.0.1',
    user: 'jgyy',
    password: '',
    database: 'join_us'
});

var data = [];
for (var i = 0; i < 500; i++) {
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}

var q = 'INSERT INTO users (email, created_at) VALUES ?';
connection.query(q, [data], function (err, result) {
    console.log(err);
    console.log(result);
});

connection.end();