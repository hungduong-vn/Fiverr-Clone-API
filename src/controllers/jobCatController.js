const { successCode, failCode, errorCode } = require("../utils/responseCode");
const prisma = require("./index");

const getAllJobCat = async (req, res) => {
  try {
    let data = await prisma.job_category.findMany();
    successCode(res, data, "JobCategory successfully fetched!");
  } catch (error) {
    errorCode(res, "Failed!")
  }
};

module.exports = { getAllJobCat };
