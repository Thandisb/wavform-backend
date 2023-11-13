const db = require("../db/dbConfig");

const getAllLessons = async () => {
  try {
    const getLessons = await db.any(`SELECT * FROM lessons`);

    return getLessons;
  } catch (error) {
    return error;
  }
};

const getSingleLesson = async (id) => {
  try {
    const lesson = await db.any("select * from lessons where id = $1", id);

    return lesson;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllLessons, getSingleLesson };
