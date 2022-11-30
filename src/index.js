const express = require("express");
const app = express();
const PORT = 8080;
app.listen(PORT, () => {
  console.log("HELLO WORLD");
});
app.get("/test", (req, res) => {
  res.send("HELLO GUYS!")
})