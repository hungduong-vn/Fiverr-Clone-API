const express = require("express");
const {
  getAllJobCats,
  getJobCatNames,
} = require("../controllers/jobCatController");
const jobCatRoute = express.Router();

jobCatRoute.get("/getAllJobCats", getAllJobCats);
jobCatRoute.get("/getJobCatNames", getJobCatNames);

module.exports = jobCatRoute;
