const prisma = require("../controllers/");
const { failCode } = require("../utils/responseCode");
const { verifyToken } = require("../utils/token");

function isUserInputEmptyMdw(req, res, next) {
  const { email, password, name } = req.body;
  const missingIdentifier = !(email || name);
  if (missingIdentifier || !password) {
    return failCode(res, null, `Missing required field`);
  }
  for (let field in req.body) {
    const input = req.body[field];
    if (input === null) {
      return failCode(res, null, `Missing required field ${field}`);
    }
  }
  next();
}

async function isEmailExisted(email) {
  return await prisma.user.count({ where: { email } });
}
async function isUsernameExisted(username) {
  return await prisma.user.count({ where: { name: username } });
}

function validateSignIn(req, res, next) {
  const { email, password, name } = req.body;
  const identifier = email || name;
  // console.log("Validate Sign in",{identifier});
  if (!identifier || !password) {
    return failCode(res, null, `Missing required field`);
  }
  next();
}

async function validateSignUp(req, res, next) {
  const { email, name } = req.body;
  if (await isEmailExisted(email)) {
    return failCode(res, null, "Email already registered!");
  }
  if (await isUsernameExisted(name)) {
    return failCode(res, null, "Username already registered!");
  }
  next();
}

function validateScheme(res, authScheme) {
  if (authScheme !== "Bearer") {
    res.header["WWW-Authenticate"] = `Bearer realm="protected"`;
    return res.status(401).json({
      data: null,
      message: "Wrong Authentication Scheme (Expected 'Bearer')",
    });
  }
}

function authenticateMdw(req, res, next) {
  const { authorization } = req.headers;
  if (!authorization) {
    return failCode(res, null, "Token not provided!");
  }
  console.log(authorization);
  const [authScheme, token] = authorization.split(" ");
  validateScheme(res, authScheme);
  try {
    const payload = verifyToken(token);
    req.jwtPayload = payload;
  } catch (error) {
    console.log(error);
    res.header[
      "WWW-Authenticate"
    ] = `Bearer realm="protected", error="invalid_token"`;
    return res.status(401).json({ data: null, message: "Invalid Token" });
  }
  console.log("Valid Token");
  next();
  // check if token null -> Not signed in
  // verifyToken -> payload -> attach to req.body
}

async function authorizeByUserNameMdw(req, res, next) {
  const { jwtPayload } = req;
  const { name } = req.params;
  console.log({ jwtPayload, name });

  if (jwtPayload.name !== name) {
    return res.status(403).json({
      message: `Forbidden access to user ${name}'s privileges`,
      content: null,
    });
  }
  next();
}

module.exports = {
  isUserInputEmptyMdw,
  authenticateMdw,
  authorizeByUserNameMdw,
  validateSignUp,
  validateSignIn,
};
