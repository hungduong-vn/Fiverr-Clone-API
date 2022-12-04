const express = require("express");
const rootRoute = express.Router();

const jobCatRoute = require("./jobCatRoute");
const serviceRoute = require("./serviceRoute");

rootRoute.use("/jobCategory", jobCatRoute);
rootRoute.use("/service/", serviceRoute);

module.exports = rootRoute;
