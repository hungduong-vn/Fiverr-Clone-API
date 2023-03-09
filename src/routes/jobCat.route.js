const express = require("express");
const {
  getJobCatsMenu,
  getJobCatNames,
  getJobCatBanners,
  getJobCatBannerById,
  getJobCatRenderDataById,
  getJobCats,
} = require("../controllers/jobCat.controller");
const jobCatRoute = express.Router();

jobCatRoute.get("/get-job-categories-menu", getJobCatsMenu);
jobCatRoute.get("/get-job-categories", getJobCats);
jobCatRoute.get("/get-job-categories-names", getJobCatNames);
jobCatRoute.get("/get-banners", getJobCatBanners);
jobCatRoute.get("/get-banners/:id", getJobCatBannerById);
jobCatRoute.get("/get-job-categories-render-data/:id", getJobCatRenderDataById);
module.exports = jobCatRoute;
