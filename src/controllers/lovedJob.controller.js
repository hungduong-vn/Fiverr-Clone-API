const prisma = require(".");
const { failCode, successCode } = require("../utils/responseCode");

async function addLovedJob(req, res) {
  const { jobId, userId } = req.body;
  const submitData = { job_id: +jobId, user_id: +userId };
  console.log({ submitData });
  try {
    const data = await prisma.loved_job.create({
      data: submitData,
    });
    return successCode(
      res,
      data,
      `User ${userId} added job ${jobId} to their favorite list`
    );
  } catch (error) {
    console.log(error);
    failCode(res, null, "Failed to add job to favorite list");
  }
}

async function getLovedJob(req, res) {
  const { jobId, userId } = req.query;
  console.log({ jobId, userId });
  try {
    const data = await prisma.loved_job.findUnique({
      where: { user_id_job_id: { job_id: +jobId, user_id: +userId } },
    });
    return successCode(
      res,
      data,
      `User ${userId} added job ${jobId} to their favorite list`
    );
  } catch (error) {
    console.log(error);
    return failCode(
      res,
      null,
      `User ${userId} failed to add job ${jobId} to their favorite list`
    );
  }
}

async function getLovedJobByUserId(req, res) {
  const { userId } = req.query;
  try {
    const data = await prisma.loved_job.findUnique({
      where: { user_id: +userId },
    });
    return successCode(
      res,
      data,
      `Successfully fetched user ${userId}'s favorite jobs`
    );
  } catch (error) {
    console.log(error);
    return failCode(
      res,
      null,
      `Failed to fetch user ${userId}'s favorite jobs`
    );
  }
}

async function removeLovedJob(req, res) {
  const { jobId, userId } = req.body;
  try {
    const data = await prisma.loved_job.delete({
      where: { user_id_job_id: { job_id: +jobId, user_id: +userId } },
    });
    return successCode(
      res,
      data,
      `User ${userId} removed job ${jobId} from their favorite list`
    );
  } catch (error) {
    console.log(error);
    return failCode(
      res,
      null,
      `User ${userId} failed to remove job ${jobId} to their favorite list`
    );
  }
}

module.exports = {
  getLovedJob,
  getLovedJobByUserId,
  addLovedJob,
  removeLovedJob,
};
