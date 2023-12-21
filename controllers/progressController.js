const express = require("express");
const router = express.Router();

const { getAllProgress, insertProgress, updateProgress } = require("../queries/progress");

router.get("/:userId/:lessonId", async (req, res) => {
  const { userId, lessonId } = req.params;
  console.log(userId, lessonId);
  const progress = await getAllProgress(userId, lessonId);
  console.log(progress);

  try {
    res.json(progress);
  } catch (error) {
    console.log(error);
  }
});

router.put("/", async (req, res) => {
  // const { userId, lessonId, status } = req.body;

  const insert = await insertProgress(req.body);

  try {
    res.json(insert);
  } catch (error) {
    console.log(error);
  }
});


router.post('/', async (req, res)=> {
  const update = await updateProgress(req.body)

  try {
    res.json(update)
  } catch (error) {
    console.log(error)
  }
})

module.exports = router;
