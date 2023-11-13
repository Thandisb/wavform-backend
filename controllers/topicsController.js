const express = require("express");
const router = express.Router({ mergeParams: true });

const { getAllTopics, getSingleTopicById } = require("../queries/topics");

router.get("/", async (req, res) => {
  const topic = await getAllTopics();

  if (!Array.isArray(topic)) {
    res.status(505).json({ error: "error!" });
  } else {
    res.json(topic);
  }
});

router.get("/:id", async (req, res) => {
  const id = req.params.id;
  const topic = await getSingleTopicById(id);

  if (topic.length === 0) {
    res.status(404).json({ error: "error!" });
  } else {
    res.json(topic);
  }
});

module.exports = router;
