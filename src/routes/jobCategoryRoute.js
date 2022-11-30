const express = require("express");
const { getAllJobCat } = require("../controllers/jobCatController");
const jobCatRoute = express.Router();

jobCatRoute.get("/getAllJobCats", getAllJobCat);

module.exports = jobCatRoute;
