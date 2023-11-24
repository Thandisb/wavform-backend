const express = require("express");
const router = express.Router();

const { getAllCreators, getSingleCreator } = require("../queries/about");

router.get("/", async (req, res) => {
  const allPeople = await getAllCreators();

  console.log(allPeople);

  if (!Array.isArray(allPeople)) {
    res.status(500).json({ error: "server error" });
  } else {
    res.json(allPeople);
  }
});

router.get("/:id", async (req, res) => {
  const { id } = req.params;
  const person = await getSingleCreator(id);

  if (person.length === 0) {
    res.status(404).json({ error: "Not found" });
  } else {
    res.json(person[0]);
  }
});

module.exports = router;
