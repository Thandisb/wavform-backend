const express = require('express');
const morgan = require('morgan');
const cors = require('cors')

const app = express();

app.use(morgan("dev"))
app.use(express.json())
app.use(cors())

app.get('/',(req, res) => {
    res.send('Hello World!')
});

module.exports = app;