const server = require('server');
const { get, post } = server.router;

// Handle requests to the url "/" ( http://localhost:3000/ )
server(
    post('/', ctx => {
        console.log(ctx.data);
        return redirect('/');
      })
    );