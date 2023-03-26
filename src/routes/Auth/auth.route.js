const { Router } = require("express");
const {
  signIn,
  signUp,
  checkEmailExisted,
  checkUsernameExisted,
} = require("../../controllers/Auth/auth.controller");
const {
  isUserInputEmptyMdw,
  validateSignUp,
  validateSignIn,
} = require("../../middlewares/auth.mid");
const authRoute = Router();

authRoute.post("/check-email-existed", checkEmailExisted);
authRoute.post("/check-username-existed", checkUsernameExisted);
authRoute.post("/sign-up", isUserInputEmptyMdw, validateSignUp, signUp);
authRoute.post("/sign-in", isUserInputEmptyMdw, validateSignIn, signIn);

module.exports = authRoute;
