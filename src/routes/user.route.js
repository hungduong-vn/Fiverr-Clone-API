const { Router } = require("express");
const {
  getUsers,
  getUserByName,
  updateUser,
} = require("../controllers/user.controller");
const { authenticateMdw } = require("../middlewares/auth.mid");
const userRoute = Router();

userRoute.get("/get-users", getUsers);
userRoute.get("/get-user-by-name/:name", getUserByName);

userRoute.get("/get-user-by-name-author/:name", authenticateMdw, getUserByName);
userRoute.put("/update-user", authenticateMdw, updateUser);

module.exports = userRoute;
