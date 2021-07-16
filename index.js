const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const dotenv = require('dotenv');
const e = require('express');
require('dotenv').config();

const app = express();
const port = process.env.PORT;

app.use(express.json());

// MYSQL
const pool = mysql.createPool({
    connectionLimit: 10,
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE
});

//ROUTES -- GET ALL
app.get('/sim-cards', (req, res) => {
    pool.getConnection((err, connection) => {
        connection.query('SELECT * FROM sim_cards', (err, data) => {
            connection.release();

            if(!err){
                res.json({
                    success: true, data
                });
            }
            else 
            {
                res.json({
                    success: false,
                    "error": err
                });
            }
        });
    });
});

// POST 
app.post('/orders', (req, res) => {
    pool.getConnection((err, connection) => {
        const params = req.body;

        connection.query('INSERT INTO orders SET ?', params, (err, data) => {
            connection.release();

            if(!err) {
                res.json({
                    success: true,
                    OrderID: data.insertId,
                    status: "Pending"
                });
            }
            else{
                res.json({
                    success: false,
                    "error": err
                });
            }
        });
    });
});

// PUT
app.put('/orders/:id', (req, res) => {
    pool.getConnection((err, connection) => {
        const {status} = req.body;

        connection.query('UPDATE orders SET status = ? WHERE orderID = ?', [status, req.params.id], (err, rows) => {
            connection.release();

            if(!err) {
                res.json({
                    success: true
                });
            }
            else{
                res.json({
                    success: false,
                    "error": err
                });
            }
        });
    });
});

//GET ALL ORDERS
app.get('/orders', (req, res) => {
    const page = parseInt(req.query.page);
    const limit = parseInt(req.query.limit);
    let offset = (page - 1) * limit

    pool.getConnection((err, connection) => {
        connection.query('SELECT * FROM orders LIMIT ? OFFSET ?', [limit, offset], (err, data) => {
            connection.release();

            if(!err){
                res.json({
                    success: true, data
                });
            }
            else 
            {
                res.json({
                    success: false,
                    "error": err
                });
            }
        });
    });
});

app.listen(port, () => console.log(`Listening on port ${port}`));