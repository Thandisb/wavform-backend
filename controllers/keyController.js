const express = require("express");
const router = express.Router();
const { postTrackKey, getTrackKeys } = require("../queries/keys");

router.get("/", async (req, res) => {
    const keys = await getTrackKeys(req.cookies.sessionID);

    try {
        if (keys.length === 0) {
            res.status(404).json({ error: "not found" });
        } else {
            res.json(keys);
        }
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
module.exports = router;
