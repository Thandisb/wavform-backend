const db = require("../db/dbConfig");

const getAllTopics = async () => {
  try {
    const getTopics = await db.any(`SELECT * FROM topics`);

    return getTopics;
  } catch (error) {
    return error;
  }
};

const getSingleTopicById = async (t_id) => {
  try {
    const getSingleTopic = await db.any(
      `select t.*, l.* from topics t left join lessons l on t.lessons_id = l.l_id where t.id = $1`,
      t_id
    );

    return getSingleTopic;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllTopics, getSingleTopicById };
