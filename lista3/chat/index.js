const express = require('express')
const http = require('http');
const socket = require('socket.io');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');
const cookie = require('cookie');

var app = express()

app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser('sgs90890s8g90as8rg90as8g9r8a0srg8'));

app.set('view engine', 'ejs')
app.set('views', './views')

var server = http.createServer(app);
var io = socket(server);


io.on('connection', socket => {
  const username = cookie.parse(socket.handshake.headers.cookie).user;
  socket.on('chat message', data => io.emit('chat message', { username, ...data }))
}
);

setInterval(function () { io.emit('time message', Date()) }, 1000)

app.get('/', authorize, (req, res) => {
  res.render('chat.ejs', { user: req.user });
});

app.get('/login', (req, res) => {
  res.render('login');
});

app.post('/login', (req, res) => {
  const username = req.body.txtUser;
  const pwd = req.body.txtPwd;
  if (username == pwd) {
    res.cookie('user', username);
    const returnUrl = req.query.returnUrl;
    res.redirect(returnUrl);
  }
  else
    res.render('login', { message: 'Błąd podczas logowania' });
})

app.get('/logout', authorize, (req, res) => {
  res.cookie('user', '', { maxAge: -1 });
  res.redirect('/')
});

// middleware autentykacji
function authorize(req, res, next) {
  if (req.cookies.user) {
    req.user = req.cookies.user;
    next();
  } else {
    res.redirect('/login?returnUrl=' + req.url);
  }
}
// http.createServer(app).listen(8080);
server.listen(process.env.PORT || 8080)
console.log('serwer działa, nawiguj do http://localhost:8080');

