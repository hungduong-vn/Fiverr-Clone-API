const express = require("express");
const rootRoute = require("./routes");
const app = express();
const PORT = 8080;
const cors = require("cors");

app.use(express.json());
app.use(express.static("."));
app.use(cors());

app.listen(PORT, () => {
  console.log("HELLO WORLD");
});
app.get("/test", (req, res) => {
  res.send("HELLO GUYS!");
});

app.use("/api", rootRoute);
