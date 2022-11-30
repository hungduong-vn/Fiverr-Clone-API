const express = require("express");
const rootRoute = express.Router();

const jobCatRoute = require("./jobCategoryRoute");

rootRoute.use("/jobCategory", jobCatRoute);

module.exports = rootRoute;
