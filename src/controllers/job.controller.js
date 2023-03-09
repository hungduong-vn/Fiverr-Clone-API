const prisma = require(".");
const { errorCode, successCode } = require("../utils/responseCode");

async function getJobs(req, res) {
  try {
    const data = await prisma.job.findMany();
    successCode(res, data, "Jobs successfully fetched!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed");
  }
}

async function getJobById(req, res) {
  const id = +req.params.id;
  try {
    const data = await prisma.job.findUnique({ where: { id } });
    successCode(res, data, `Job ${id} successfully fetched`);
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed");
  }
}

module.exports = { getJobs, getJobById };
