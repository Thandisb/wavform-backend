const express = require("express");
const router = express.Router();
const {
    postTrackKey,
    getTrackKeys,
    eraseTrackKeys,
} = require("../queries/keys");

router.get("/:id", async (req, res) => {
    const { id } = req.params;
    const keys = await getTrackKeys(id);
    try {
        res.json(keys);
    } catch (error) {
        console.warn(error);
    }
});
router.post("/", async (req, res) => {
    const key = await postTrackKey(req.body);
    try {
        if (!key) {
            res.status(404).json({ error: "not found" });
        } else {
            res.json(key);
        }
    } catch (error) {
        console.warn(error);
    }
});
router.delete("/", async (req, res) => {
    const key = await eraseTrackKeys(req.body);
    try {
        if (!key) {
            res.status(404).json({ error: "not found" });
        } else {
            res.json(key);
        }
    } catch (error) {
        console.warn(error);
    }
});
module.exports = router;
