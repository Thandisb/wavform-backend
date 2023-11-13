const express = require("express");
const router = express.Router();

const { getAllLessons } = require("../queries/info");

router.get("/", async (req, res) => {
  const lessons = await getAllLessons();
  try {
    if (Array.isArray(lessons)) {
      res.status(500).json({ error: "Server error!" });
    } else {
        res.json(lessons)
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
module.exports = router;
