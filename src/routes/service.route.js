const express = require("express");
const {
  getServices,
  getServicesByJobSubCatId,
  getServicesByJobCatId,
} = require("../controllers/service.controller");

const serviceRoute = express.Router();
serviceRoute.get("/get-services", getServices);
serviceRoute.get("/get-services/job-subcategory/:id", getServicesByJobSubCatId);
serviceRoute.get("/get-services/job-category/:id", getServicesByJobCatId);
module.exports = serviceRoute;
