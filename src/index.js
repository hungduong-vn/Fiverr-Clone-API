const express = require("express");
const rootRoute = require("./routes");
const app = express();
const PORT = 8080;
const cors = require("cors");
// const fs = require("fs");

// const https = require("https");

// const httpsOptions = {
//   cert: fs.readFileSync("/etc/letsencrypt/live/saltair.site/fullchain.pem"),
//   key: fs.readFileSync("/etc/letsencrypt/live/saltair.site/privkey.pem"),
// };

// https.createServer(httpsOptions, app).listen(PORT);

app.use(express.json());
app.use(express.static("."));
app.use(cors());

app.listen(PORT, () => {
  console.log("HELLO WORLD");
});
app.get("/test", (req, res) => {
  res.send("HELLO GUYS!");
});

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/view/index.html");
});

app.use("/api", rootRoute);
