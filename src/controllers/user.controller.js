const prisma = require(".");
const { successCode, errorCode, failCode } = require("../utils/responseCode");

async function getUsers(req, res) {
  try {
    const data = await prisma.user.findMany();
    successCode(res, data, "Users successfully fetched!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed to get Users");
  }
}

async function getUserByName(req, res) {
  const name = req.params.name;
  try {
    const data = await prisma.user.findFirst({
      where: { name },
    });
    if (!data) {
      return failCode(res, data, `User ${name} not found`);
    }
    delete data.password;
    return successCode(res, data, `User ${name} successfully fetched`);
  } catch (error) {
    console.log(error);
    return errorCode(res, `Failed to fetch User ${name}`);
  }
}

async function updateUser(req, res) {
  const { data } = req.body;
  const { jwtPayload } = req;
  // console.log({ jwtPayload, data });
  if (!jwtPayload) {
    return failCode(res, null, "Invalid token");
  }
  try {
    // TO-DO: Check jwtPayload.id exist in DB
    const updateUser = await prisma.user.update({
      where: { id: jwtPayload.id },
      data: { ...data },
    });
    successCode(res, updateUser, `Updated user ${jwtPayload.name}`);
  } catch (error) {
    console.log(error);
    errorCode(res, `Failed to update user ${jwtPayload.name}`);
  }
}

module.exports = { getUsers, getUserByName, updateUser };
