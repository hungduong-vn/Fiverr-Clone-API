const { failCode } = require("../utils/responseCode");

function isUserInputEmptyMdw(req, res, next) {
  const { email, password } = req.body;
  if (!email || !password) {
    failCode(res, null, `Missing required field`);
    return;
  }
  for (let field in req.body) {
    const input = req.body[field];
    if (!input) {
      failCode(res, null, `Missing required field ${field}`);
      return;
    }
  }
  next();
}

function authenticateMdw(req, res, next) {
  // check if token null -> Not signed in

  // verifyToken -> payload -> attach to req.body
}

module.exports = { isUserInputEmptyMdw, authenticateMdw };
