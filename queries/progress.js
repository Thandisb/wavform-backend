const db = require("../db/dbConfig");

const getAllProgress = async (user, lesson) => {
  try {
    // const {user, lesson} = progress

    const getLesson = await db.any(
      `SELECT * FROM progress_tracker WHERE l_id = $1 AND u_id = $2`,
      [user, lesson]
    );

    return getLesson[0];
  } catch (error) {
    return error;
  }
};

const insertProgress = async (info) => {
  try {
    const { userId, lessonId, status } = info;

    const update = await db.any(
      `INSERT INTO progress_tracker VALUES ($1, $2, $3) RETURNING *`,
      [userId, lessonId, status]
    );

    return update;
  } catch (error) {
    return error;
  }
};

const updateProgress = async (info) => {
  try {
    const { userId, lessonId, status } = info;

    const update = await db.any(
      `UPDATE progress_tracker SET status = '$1' WHERE l_id = $2 AND u_id = $3`,
      [status, lessonId, userId]
    );

    return update;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllProgress, insertProgress, updateProgress };
