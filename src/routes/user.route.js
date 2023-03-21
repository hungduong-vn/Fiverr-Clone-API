const { Router } = require("express");
const { getUsers, getUserById } = require("../controllers/user.controller");
const userRoute = Router();

userRoute.get("/get-users", getUsers);
userRoute.get("/get-user-by-id/:id", getUserById);

module.exports = userRoute;
