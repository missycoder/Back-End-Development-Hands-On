const express = require('express');
const hbs = require('hbs');
const wax = require('wax-on');
// const { createConnection } = require('mysql2/promise');
require('dotenv').config();

const app = express();

// set up view engine
app.set('view engine', 'hbs');


// require('handlebars-helpers')({
//     handlebars: hbs.handlebars
// })

// enable static files
app.use(express.static('public'));

app.use(express.urlencoded({
    extended: false
}))

// wax-on (template inheritance)
wax.on(hbs.handlebars);
wax.setLayoutPath('./views/layouts');

async function main() {
    const connection = await createConnection({
        'host': process.env.DB_HOST,
        'user': process.env.DB_USER,
        'database': process.env.DB_DATABASE,
        'password': process.env.DB_PASSWORD
    })


app.listen(3000, function() {
    console.log("server has started");
})
}

main();