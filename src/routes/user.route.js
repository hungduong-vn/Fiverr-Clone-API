const { Router } = require("express");
const { getUsers, getUserById } = require("../controllers/user.controller");
const userRoute = Router();

userRoute.use("/get-users", getUsers);
userRoute.use("/get-user-by-id/:id", getUserById);

module.exports = userRoute;
