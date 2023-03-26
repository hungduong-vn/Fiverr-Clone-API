const { Router } = require("express");
const {
  getJobs,
  getJobById,
  getJobByUser,
} = require("../controllers/job.controller");
const {
  addLovedJob,
  getLovedJob,
  removeLovedJob,
  getLovedJobByUserId,
} = require("../controllers/lovedJob.controller");
const { authenticateMdw } = require("../middlewares/auth.mid");
const jobRoute = Router();

jobRoute.get("/get-jobs", getJobs);
jobRoute.get("/get-job-by-id/:id", getJobById);
jobRoute.get("/get-jobs-by-user", getJobByUser);

jobRoute.post("/add-loved-job", authenticateMdw, addLovedJob);
jobRoute.delete("/remove-loved-job", authenticateMdw, removeLovedJob);
jobRoute.get("/get-loved-job", authenticateMdw, getLovedJob);
jobRoute.get(
  "/get-loved-job-by-user-id/:id",
  authenticateMdw,
  getLovedJobByUserId
);

module.exports = jobRoute;
