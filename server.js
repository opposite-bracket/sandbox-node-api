const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.set('API', 'Sandbox Node API')
  res.send({message: 'Response to Sandbox Node API'});
});

app.disable('x-powered-by');

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
});
