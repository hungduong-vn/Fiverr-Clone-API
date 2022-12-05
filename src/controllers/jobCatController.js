const { successCode, failCode, errorCode } = require("../utils/responseCode");
const { job_subcategory } = require("./index");
const prisma = require("./index");

const getJobCatsMenu = async (req, res) => {
  try {
    let data = await prisma.job_category.findMany({
      include: {
        job_subcategory: {
          include: { service: true },
        },
      },
    });
    const result = data.map(({ job_subcategory, ..._ }) => {
      return {
        id: _.id,
        name: _.name,
        job_subcategories: job_subcategory.map(
          ({ job_cat_id, img, ...rest }) => rest
        ),
      };
    });
    successCode(res, result, "JobCategory successfully fetched!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed!");
  }
};

const getJobCatNames = async (req, res) => {
  try {
    let data = await prisma.job_category.findMany();
    successCode(res, data, "JobCategory names successfully fetched!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed!");
  }
};

const getJobCatBanners = async (req, res) => {
  try {
    let data = await prisma.job_cat_banner.findMany();
    successCode(res, data, "JobCategoryBanners successfully fetched!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed!");
  }
};

const getJobCatBannerById = async (req, res) => {
  const id = req.params.id * 1;
  try {
    let data = await prisma.job_cat_banner.findUnique({
      where: { id },
    });
    successCode(
      res,
      data,
      `Banner for JobCategory ${id} is successfully fetched!`
    );
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed!");
  }
};

const getJobCatRenderDataById = async (req, res) => {
  const id = req.params.id * 1;
  try {
    let data = await prisma.job_category.findUnique({
      where: { id },
      include: {
        job_cat_banner: true,
        popular_service: true,
        related_service: true,
      },
    });
    const message = `Render data for JobCategory ${data.name} successfully fetched!`;
    successCode(res, data, message);
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed");
  }
};

module.exports = {
  getJobCatsMenu,
  getJobCatNames,
  getJobCatBanners,
  getJobCatBannerById,
  getJobCatRenderDataById,
};
