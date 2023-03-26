const { Router } = require("express");
const {
  getUsers,
  getUserByName,
  updateUser,
} = require("../controllers/user.controller");
const {
  authenticateMdw,
  authorizeByUserNameMdw,
} = require("../middlewares/auth.mid");
const userRoute = Router();

userRoute.get("/get-users", getUsers);
userRoute.get("/get-user-by-name/:name", getUserByName);

userRoute.get(
  "/get-user-by-name-author/:name",
  authenticateMdw,
  authorizeByUserNameMdw,
  getUserByName
);
userRoute.put("/update-user", authenticateMdw, updateUser);

module.exports = userRoute;
