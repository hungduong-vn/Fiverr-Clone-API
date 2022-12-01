const { successCode, failCode, errorCode } = require("../utils/responseCode");
const prisma = require("./index");

const getAllJobCats = async (req, res) => {
  try {
    // let data = await prisma.job_subcategory.findMany();
    let job_subcat_list = await prisma.job_category.findMany({
      include: {
        job_subcategory: {
          select: { id: true, name: true, img: true },
        },
      },
    });
    let data = job_subcat_list;
    successCode(res, data, "JobCategory successfully fetched!");
  } catch (error) {
    errorCode(res, "Failed!");
  }
};

const getJobCatNames = async (req, res) => {
  try {
    let data = await prisma.job_category.findMany();
    successCode(res, data, "JobCategory names successfully fetched!");
  } catch (error) {
    errorCode(res, "Failed!");
  }
};

module.exports = { getAllJobCats, getJobCatNames };
