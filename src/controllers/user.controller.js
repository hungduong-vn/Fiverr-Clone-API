const prisma = require(".");
const { successCode, errorCode } = require("../utils/responseCode");

async function getUsers(req, res) {
  try {
    const data = await prisma.user.findMany();
    successCode(res, data, "Users successfully fetched!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed to get Users");
  }
}

async function getUserById(req, res) {
  const id = +req.params.id;
  try {
    const data = await prisma.user.findUnique({ where: { id } });
    successCode(res, data, `User ${id} successfully fetched`);
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed");
  }
}
module.exports = { getUsers, getUserById };
