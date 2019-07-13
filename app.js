const Express = require("express");
const app = Express();


app.get('/', (req, res) => {
  res.send("Hello World!");
})

app.listen(9823, () => {
  console.log("App started at port 9823");
});