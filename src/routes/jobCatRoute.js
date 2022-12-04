const express = require("express");
const {
  getAllJobCats,
  getJobCatNames,
  getJobCatBanners,
  getJobCatBannerById,
  getJobCatRenderDataById,
} = require("../controllers/jobCatController");
const jobCatRoute = express.Router();

jobCatRoute.get("/get-job-categories", getAllJobCats);
jobCatRoute.get("/get-job-categories-names", getJobCatNames);
jobCatRoute.get("/get-banners/", getJobCatBanners);
jobCatRoute.get("/get-banners/:id", getJobCatBannerById);
jobCatRoute.get("/get-job-categories-render-data/:id", getJobCatRenderDataById);
module.exports = jobCatRoute;
