const { errorCode, successCode } = require("../utils/responseCode");
const prisma = require("./index");

const getServices = async (req, res) => {
  try {
    let data = await prisma.service.findMany();
    successCode(res, data, "Services successfully fetched!");
  } catch (error) {
    errorCode(res, error);
  }
};

const getServicesByJobSubCatId = async (req, res) => {
  const job_subcat_id_param = req.params.id * 1;
  try {
    let data = await prisma.job_subcategory.findUnique({
      where: { id: job_subcat_id_param },
      include: { service: true },
    });
    const services = data.service.map(
      ({ job_subcat_id, ...service }) => service
    );
    console.log({ services });
    const result = {
      job_subcat_id: data.id,
      job_subcat_name: data.name,
      services,
    };
    successCode(res, result, `Services for JobSubCategory ${data.name}`);
  } catch (error) {
    // console.log(error);
    errorCode(res, error);
  }
};

const getServicesByJobCatId = async (req, res) => {
  const job_cat_id_param = req.params.id * 1;
  try {
    let data = await prisma.job_category.findUnique({
      where: { id: job_cat_id_param },
      include: {
        job_subcategory: {
          include: {
            service: {
              select: { id: true, name: true, new: true },
            },
          },
        },
      },
    });
    successCode(res, data, `Services for JobCategory ${data.name}`);
  } catch (error) {
    console.log(error);
    errorCode(res, error);
  }
};

module.exports = {
  getServices,
  getServicesByJobSubCatId,
  getServicesByJobCatId,
};
