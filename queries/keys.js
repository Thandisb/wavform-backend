const db = require("../db/dbConfig");

const postTrackKey = async (info) => {
    try {
        const { session, key_press } = info;
        const getLesson = await db.any(
            `INSERT INTO key_tracker (s_id, key_press, time_logged) VALUES ($1, $2, CURRENT_TIMESTAMP) RETURNING *`,
            [session, key_press]
        );

        return getLesson[0];
    } catch (error) {
        return error;
    }
};
const getTrackKeys = async (session) => {
    try {
        const getKeys = await db.any(
            `SELECT * FROM key_tracker WHERE s_id=$1`,
            [session]
        );

        return getKeys;
    } catch (error) {
        return error;
    }
};

module.exports = { postTrackKey, getTrackKeys };
