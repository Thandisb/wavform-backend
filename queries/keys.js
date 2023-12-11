const db = require("../db/dbConfig");

const postTrackKey = async (info) => {
    try {
        const { user, key_press } = info;
        const getLesson = await db.any(
            `INSERT INTO key_tracker (u_id, key_press, time_logged) VALUES ($1, $2, CURRENT_TIMESTAMP) RETURNING *`,
            [user, key_press]
        );

        return getLesson[0];
    } catch (error) {
        return error;
    }
};
const getTrackKeys = async (user) => {
    try {
        const getKeys = await db.any(
            `SELECT * FROM key_tracker WHERE u_id=$1`,
            [user]
        );
        return getKeys;
    } catch (error) {
        return error;
    }
};
const eraseTrackKeys = async (info) => {
    try {
        const { user } = info;
        const getKeys = await db.any(
            `DELETE FROM key_tracker WHERE u_id=$1 RETURNING *`,
            [user]
        );
        return getKeys;
    } catch (error) {
        return error;
    }
};
module.exports = { postTrackKey, getTrackKeys, eraseTrackKeys };
