const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");

function generateToken(payload) {
  return jwt.sign(payload, process.env.JWT_SECRET);
}

function verifyToken(token) {
  return jwt.verify(token, process.env.JWT_SECRET);
}

function encryptString(string) {
  return bcrypt.hashSync(string, bcrypt.genSaltSync(10));
}

function compareEncrypted(original, encrypted) {
  return bcrypt.compareSync(original, encrypted);
}

module.exports = {
  generateToken,
  verifyToken,
  encryptString,
  compareEncrypted,
};
