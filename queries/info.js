const db = require("../db/dbConfig");

const getAllLessons = async () => {
  try {
    const getLessons = await db.any(`SELECT * FROM lessons`);

    return getLessons;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllLessons };
