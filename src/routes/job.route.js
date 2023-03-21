const { Router } = require("express");
const { getJobs, getJobById } = require("../controllers/job.controller");
const {
  addLovedJob,
  getLovedJob,
  removeLovedJob,
} = require("../controllers/lovedJob.controller");
const { authenticateMdw } = require("../middlewares/auth.mid");
const jobRoute = Router();

jobRoute.get("/get-jobs", getJobs);
jobRoute.get("/get-job-by-id/:id", getJobById);

jobRoute.post("/add-loved-job", authenticateMdw, addLovedJob);
jobRoute.delete("/remove-loved-job", authenticateMdw, removeLovedJob);
jobRoute.get("/get-loved-job", authenticateMdw, getLovedJob);

module.exports = jobRoute;
