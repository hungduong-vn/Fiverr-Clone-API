const express = require("express");
const rootRoute = express.Router();

const jobCatRoute = require("./jobCat.route");
const jobRoute = require("./job.route");
const serviceRoute = require("./service.route");
const userRoute = require("./user.route");
const authRoute = require("./Auth/auth.route");

rootRoute.use("/jobCategory", jobCatRoute);
rootRoute.use("/service", serviceRoute);
rootRoute.use("/users", userRoute);
rootRoute.use("/job", jobRoute);
rootRoute.use("/auth", authRoute);

module.exports = rootRoute;
