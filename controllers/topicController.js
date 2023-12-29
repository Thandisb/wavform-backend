const express = require("express");
const router = express.Router();

const {
  getAllDetails,
  getDetailsByTopicId,
} = require("../queries/topic");

router.get("/", async (req, res) => {
  const detail = await getAllDetails();

  if (!Array.isArray(detail)) {
    res.status(500).json({ error: "error!" });
  } else {
    res.json(detail);
  }
});

router.get("/topic/:id", async (req, res) => {
  const id = req.params.id;
  const detail = await getDetailsByTopicId(id);
  console.log(detail);
  if (detail.length === 0) {
    res.status(404).json({ error: "error" });
  } else {
    res.json(detail);
  }
});

module.exports = router;
