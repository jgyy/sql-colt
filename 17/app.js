import express from 'express';
import { createConnection } from 'mysql';

var connection = createConnection({
    host: '127.0.0.1',
    user: 'jgyy',
    password: '',
    database: 'join_us'
});

var app = express();

app.get("/", function (req, res) {
    var q = 'SELECT COUNT(*) as count FROM users';
    connection.query(q, function (error, results) {
        if (error) throw error;
        var msg = "We have " + results[0].count + " users";
        res.send(msg);
    });
});

app.get("/joke", function (req, res) {
    var joke = "What do you call a dog that does magic tricks? A labracadabrador.";
    res.send(joke);
});

app.get("/random_num", function (req, res) {
    var num = Math.floor((Math.random() * 10) + 1);
    res.send("Your lucky number is " + num);
});

app.listen(8080, function () {
    console.log('App listening on port 8080!');
});