const express = require('express')
const os = require('os')
const path = require('path')
const app = express()
const port = 12345

app.use(express.static(path.join(__dirname, 'static')));

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.render('index.ejs', os)
})

console.log(os.networkInterfaces().enp2s0)

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
