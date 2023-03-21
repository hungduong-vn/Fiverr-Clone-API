const prisma = require("..");
const {
  successCode,
  errorCode,
  failCode,
} = require("../../utils/responseCode");
const {
  generateToken,
  encryptString,
  compareEncrypted,
} = require("../../utils/token");

async function signIn(req, res) {
  const { email, name, password } = req.body;
  const identifierKey = email ? "email" : "name";
  const identifierValue = email || name;
  try {
    let data = await prisma.user.findFirst({
      where: { [identifierKey]: identifierValue },
    });
    console.log(data);
    if (!data) {
      failCode(res, data, `${identifierKey} doesn't exist!`);
      return;
    }
    if (!compareEncrypted(password, data.password)) {
      failCode(res, null, `Wrong password`);
    } else {
      const token = generateToken({ id: data.id, name: data.name });
      data = { ...data, accessToken: token };
      delete data.password;
      successCode(res, data, `Successfully signed in!`);
    }
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed");
  }
}

async function signUp(req, res) {
  const { ...userInfo } = req.body;
  try {
    const encryptedPassword = encryptString(userInfo.password);
    const newUser = {
      ...userInfo,
      password: encryptedPassword,
      gender: !!userInfo.gender,
      birthday: new Date(userInfo.birthday),
    };
    let data = await prisma.user.create({ data: { ...newUser } });
    delete data.password;
    const token = generateToken(data);
    data = { ...data, accessToken: token };
    successCode(res, data, "Signed up successfully!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed!");
  }
}

module.exports = { signIn, signUp };
