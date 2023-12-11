const express = require("express");
const cors = require("cors");
const morgan = require("morgan");

const app = express();

const lessonsController = require("./controllers/lessonsController");
const topicsController = require("./controllers/topicsController");
const sequencesController = require("./controllers/sequencesController");
const aboutController = require("./controllers/aboutController");
const UserRouter = require("./routers/userRouter");
const keyController = require("./controllers/keyController");

app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

app.use("/lessons", lessonsController);
app.use("/topics", topicsController);
app.use("/sequences", sequencesController);
app.use("/about", aboutController);
app.use("/users", UserRouter);
app.use("/keys", keyController);

app.get("/", (req, res) => {
    res.send("Welcome to Wavform App");
});

app.get("*", (req, res) => {
    res.status(404).send("Page not found!");
});

module.exports = app;
