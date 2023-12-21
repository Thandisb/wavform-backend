const express = require("express");
const router = express.Router();

const { getAllTopics, getTopicsByLessonId, getSingleTopic } = require("../queries/topics");

router.get("/", async (req, res) => {
  const topic = await getAllTopics();

  if (!Array.isArray(topic)) {
    res.status(505).json({ error: "error!" });
  } else {
    res.json(topic);
  }
});

router.get("/lessons/:id", async (req, res) => {
  const id = req.params.id;
  const topic = await getTopicsByLessonId(id);

  if (topic.length === 0) {
    res.status(404).json({ error: "error!" });
  } else {
    res.json(topic);
  }
});

router.get("/topic/:id", async (req, res) => {
  const id = req.params.id;
  const topic = await getSingleTopic(id);

  if (topic.length === 0) {
    res.status(404).json({ error: "error!" });
  } else {
    res.json(topic[0]);
  }
});

// router.get("/:id", async (req, res) => {
//   const id = req.params.id;
//   const topic = await getSingleTopic(id);

//   if (topic.length === 0) {
//     res.status(404).json({ error: "error!" });
//   } else {
//     res.json(topic[0]);
//   }
// });

module.exports = router;
