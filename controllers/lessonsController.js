const express = require("express");
const router = express.Router();

// const topicsController = require("./topicsController");

// router.use("/:lessonsId/topics", topicsController);

const { getAllLessons, getSingleLesson } = require("../queries/info");

router.get("/", async (req, res) => {
  const lessons = await getAllLessons();
  try {
    if (!Array.isArray(lessons)) {
      res.status(500).json({ error: "Server error!" });
    } else {
      res.json(lessons);
    }
  } catch (error) {
    console.warn(error);
  }
  // if (!Array.isArray(lessons)) {
  //     res.status.json({ error: "Server error!" });
  //   } else {
  //       res.json(lessons)
  //   }
});

router.get("/:id", async (req, res) => {
  const id = req.params.id;

  const lesson = await getSingleLesson(id);

  try {
    if (lesson.length === 0) {
      res.status(404).json({ error: "not found" });
    } else {
      res.json(lesson[0]);
    }
  } catch (error) {
    console.warn(error);
  }
});
module.exports = router;
