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

const getJobCatBanners = async (req, res) => {
  try {
    let data = await prisma.job_cat_banner.findMany();
    successCode(res, data, "JobCategoryBanners successfully fetched!");
  } catch (error) {
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
  } catch (erro) {
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
    errorCode(res, error);
  }
};

module.exports = {
  getAllJobCats,
  getJobCatNames,
  getJobCatBanners,
  getJobCatBannerById,
  getJobCatRenderDataById,
};
