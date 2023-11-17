const express = require("express");
const cors = require("cors");
const morgan = require("morgan");

const app = express();
 const lessonsController = require("./controllers/lessonsController");
 const topicsController = require("./controllers/topicsController");
const aboutController = require("./controllers/aboutController");

app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

 app.use("/lessons", lessonsController);
 app.use("/topics", topicsController);
 app.use("/about", aboutController);

app.get("/", (req, res) => {
  res.send("Welcome to Wavform App");
});

app.get("*", (req, res) => {
  res.status(404).send("Page not found!");
});

module.exports = app;
