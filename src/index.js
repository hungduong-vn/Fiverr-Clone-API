const express = require("express");
const rootRoute = require("./routes");
const app = express();
const PORT = 8080;
const cors = require("cors");
const swaggerJSDoc = require("swagger-jsdoc");
const swaggerUI = require("swagger-ui-express");

const swaggerOptions = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "Fiverr Clone API - Built by Jasper Duong",
      version: "1.0.0",
      description: "API for Data queries to Fiverr Clone Web Page",
      contact: {
        name: "Dương Ngọc Hùng (Jasper Duong)",
        email: "duongngochung13@gmail.com",
      },
      servers: ["http://localhost:8080/api"],
    },
  },
  apis: ["index.js"], 
};
const swaggerDocs = swaggerJSDoc(swaggerOptions);
app.use("/api-docs", swaggerUI.serve, swaggerUI.setup(swaggerDocs));


app.use(express.json());
app.use(express.static("."));
app.use(cors());

/**
 * @swagger
 * definitions:
 *  JobCategory:
 *    type: object
 *    properties:
 *      id:
 *        type: integer
 *        example: 1
 *      name:
 *        type: string
 *        example: 'Graphics & Design'
 */

/**
 * @swagger
 * /jobCategory/get-job-categories-names:
 * get:
 *  summary: Get all Job Categories' names
 *  description: Get all Job Categories' names
 *  responses:
 *    200:
 *      description: Successfully fetched JobCategories' names
 *        content:
 *          application/json:
 *            schema:
 *              $ref: '#definitions/JobCategory'
 */


app.listen(PORT, () => {
  console.log("HELLO WORLD");
});
app.get("/test", (req, res) => {
  res.send("HELLO GUYS!");
});

// app.get("/", (req, res) => {
//   res.sendFile(__dirname + "/view/index.html");
// });

app.use("/api", rootRoute);
