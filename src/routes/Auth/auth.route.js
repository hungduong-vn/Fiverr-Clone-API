const { Router } = require("express");
const { signIn, signUp } = require("../../controllers/Auth/auth.controller");
const {
  isUserInputEmptyMdw,
  validateSignUp,
  validateSignIn,
} = require("../../middlewares/auth.mid");
const authRoute = Router();

authRoute.post("/sign-up", isUserInputEmptyMdw, validateSignUp, signUp);
authRoute.post("/sign-in", validateSignIn, signIn);

module.exports = authRoute;
