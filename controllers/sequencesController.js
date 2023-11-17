const express = require("express");
const router = express.Router();

const {
  getAllSequences,
  getSequenceById,
  createSequence,
  deleteSequenceById,
  updateSequenceById,
} = require("../queries/sequences");

router.get("/", async (req, res) => {
  const sequences = await getAllSequences();

  try {
    if (!Array.isArray(sequences)) {
      res.status(500).json({ error: "Server error!" });
    } else {
      res.json(sequences);
    }
  } catch (error) {
    console.warn(error);
  }
});

router.get("/:id", async (req, res) => {
    const { id } = req.params;

    const sequence = await getSequenceById(id);

    if (sequence.length === 0) {
        res.status(404).json({ error: "Sequence not found"});
    } else {
        res.json(sequence[0])
    }
})

router.post("/", async (req, res) => {
  try {
    const sequenceData = {
      ...req.body,
    };

    const sequence = await createSequence(sequenceData);
    res.json(sequence);
  } catch (error) {
    res.status(404).json({ error: "error" });
  }
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;

  const deletedSequence = await deleteSequenceById(id);

  if (deletedSequence.length === 0) {
    res.status(404).json({ error: "Sequence not found" });
  } else {
    res.json(deletedSequence[0]);
  }
});

router.put("/:id", async (req, res) => {
    try {
        const { id } = req.params;
        
        const updatedSequenceData = {
            ...req.body
        };

        const updatedSequence = await updateSequenceById(id, updatedSequenceData);

        if (updatedSequence.length === 0) {
            res.status(404).json({ error: "Sequence not found" });
        } else {
            res.json(updatedSequence[0])
        }
    } catch (error) {
        res.status(500).json({ error: "server error" })
    }
})


modules.exports = router;