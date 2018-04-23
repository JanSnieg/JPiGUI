var http = require('http');
var url = require('url');
var fs = require('fs');

http.createServer((req, res) => {
    var requestUrl = url.parse("/Users/jansnieg/Documents/ISSP6/JPiGUI/lista3/podstrony" + req.url + ".html");
    res.writeHead(200);
    fs.createReadStream(requestUrl.pathname).pipe(res);
}).listen(3000);