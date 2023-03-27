const express = require("express");
const rootRoute = require("./routes/index.route");
const app = express();
const PORT = 8080;
const cors = require("cors");
const morgan = require("morgan");

app.use(cors());

app.use(morgan("combined"));
app.use(express.static("."));
app.use(express.json());

app.get("/test", (req, res) => {
  res.send("HELLO GUYS!");
});

// app.get("/", (req, res) => {
//   res.sendFile(__dirname + "/view/index.html");
// });

app.use("/api", rootRoute);
app.listen(PORT, () => {
  console.log("HELLO WORLD");
});
