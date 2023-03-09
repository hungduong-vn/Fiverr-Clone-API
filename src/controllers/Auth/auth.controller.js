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
  const { email, password } = req.body;
  try {
    let data = await prisma.user.findUnique({ where: { email } });
    console.log(data);
    if (!data) {
      failCode(res, data, `Email doesn't exist!`);
      return;
    }
    if (!compareEncrypted(password, data.password)) {
      failCode(res, null, `Wrong password`);
    } else {
      const token = generateToken(data);
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
  const { email, ...userInfo } = req.body;
  try {
    let existedEmail = await prisma.user.findUnique({ where: { email } });
    if (existedEmail) {
      failCode(res, null, "Email already registered");
    }
    const encryptedPassword = encryptString(userInfo.password);
    const newUser = {
      email,
      ...userInfo,
      password: encryptedPassword,
      birthday: new Date(userInfo.birthday),
    };
    const data = await prisma.user.create({ data: { ...newUser } });
    delete data.password;
    successCode(res, data, "Signed up successfully!");
  } catch (error) {
    console.log(error);
    errorCode(res, "Failed!");
  }
}

module.exports = { signIn, signUp };
