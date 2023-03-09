const { Router } = require("express");
const { getJobs, getJobById } = require("../controllers/job.controller");
const jobRoute = Router();

jobRoute.use("/get-jobs", getJobs);
jobRoute.use("/get-job-by-id/:id", getJobById);

module.exports = jobRoute;
