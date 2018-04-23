const express = require('express');
const app = express();

// app.get('*', (req, res) => res.send(`Jestes na stronie ${req.url}`));
app.get('/strona1', (req, res) => {
    res.sendFile("/Users/jansnieg/Documents/ISSP6/JPiGUI/lista3/podstrony/strona1.html");
  });

app.get('/strona2', (req, res) => {
    res.sendFile("/Users/jansnieg/Documents/ISSP6/JPiGUI/lista3/podstrony/strona2.html");
  });

app.get('/strona3', (req, res) => {
    res.sendFile("/Users/jansnieg/Documents/ISSP6/JPiGUI/lista3/podstrony/strona3.html");
  });



app.listen(3000, () => console.log('Listening on port 3000'));