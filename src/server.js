// file initializes the app, sets up middleware, and starts the server

const express = require('express');
const path = require('path');
const morgan = require('morgan');
const pokemonRoutes = require('./routes/pokemonRoutes');  

const app = express();
const PORT = process.env.PORT || 3000;


//define the routes middleware
app.use(express.json());
app.use(express.static(path.join(__dirname, '../dist')));
app.use(express.static(path.join(__dirname, 'views/public'))); 

app.use(morgan('dev'));

app.use('/pokemon', pokemonRoutes);    


//error handling
app.use((err, req, res, next)=>{
    res.status(500).send(err.message);   
})

//start the server
app.listen(PORT, ()=>{
    console.log(`Server is running on http://localhost:${PORT}`);
});

