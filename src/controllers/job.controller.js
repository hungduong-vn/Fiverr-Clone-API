const prisma = require(".");
const { errorCode, successCode, failCode } = require("../utils/responseCode");

async function getJobs(req, res) {
  try {
    let data = await prisma.job.findMany({
      include: { user: { select: { name: true, avatar: true } } },
    });
    // rename field "user" -> "seller"
    data = data.map((job) => {
      const { user, ...rest } = job;
      return { seller: user, ...rest };
    });
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

async function getJobByUser(req, res) {
  const { userId, userName } = req.query;
  const identifierValue = +userId || userName;
  if (!identifierValue) {
    return failCode(res, null, "Missing User's name or id");
  }
  const identifierKey = userId ? "id" : "name";
  // console.log({ [identifierKey]: identifierValue });
  try {
    let data = await prisma.job.findMany({
      where: { user: { [identifierKey]: identifierValue } },
      include: {
        user: { select: { name: true, avatar: true } },
      },
    });
    data = data.map((job) => {
      const { user, ...rest } = job;
      return { seller: user, ...rest };
    });
    successCode(
      res,
      data,
      `Successfully fetched jobs by user ${identifierValue}`
    );
  } catch (error) {
    console.log(error);
    errorCode(res, `Failed to fetch jobs by user ${identifierValue}`);
  }
}

module.exports = { getJobs, getJobById, getJobByUser };
