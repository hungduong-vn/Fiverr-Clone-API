const { Router } = require("express");
const { signIn, signUp } = require("../../controllers/Auth/auth.controller");
const { isUserInputEmptyMdw } = require("../../middlewares/auth.mid");
const authRoute = Router();

authRoute.use("/sign-up", isUserInputEmptyMdw, signUp);
authRoute.use("/sign-in", isUserInputEmptyMdw, signIn);

module.exports = authRoute;
