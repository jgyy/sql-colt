import { createConnection } from 'mysql';
import { faker } from '@faker-js/faker';

var connection = createConnection({
    host: '127.0.0.1',
    user: 'jgyy',
    password: '',
    database: 'join_us'
});

connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
    if (error) throw error;
    console.log('The solution is: ', results[0].solution);
});

var q = 'SELECT CURTIME() as time, CURDATE() as date, NOW() as now';
connection.query(q, function (error, results, fields) {
    if (error) throw error;
    console.log(results[0].time);
    console.log(results[0].date);
    console.log(results[0].now);
});

var q = 'SELECT * FROM users ';
connection.query(q, function (error, results, fields) {
    if (error) throw error;
    console.log(results);
});

var q = 'SELECT COUNT(*) AS total FROM users ';
connection.query(q, function (error, results, fields) {
    if (error) throw error;
    console.log(results[0].total);
});

var q = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")';
connection.query(q, function (error, results, fields) {
    if (error) throw error;
    console.log(results);
});

var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};
var end_result = connection.query('INSERT INTO users SET ?', person, function (err, result) {
    if (err) throw err;
    console.log(result);
});

connection.end();