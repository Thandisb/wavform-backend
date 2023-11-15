const db = require("../db/dbConfig");

const getAllTopics = async () => {
  try {
    const getTopics = await db.any(`SELECT * FROM topics`);

    return getTopics;
  } catch (error) {
    return error;
  }
};

// get topics releated to the lessons_id
const getTopicsByLessonId = async (t_id) => {
  try {
    // const getSingleTopic = await db.any(
    //   `select t.*, l.* from topics t left join lessons l. on t.lessons_id = l.l_id where t.id = $1`,
    //   t_id
    // );

    const getAllTopicByLessonId = await db.any(
      `select * from topics where lessons_id = $1`,
      t_id
    );

    return getAllTopicByLessonId;
  } catch (error) {
    return error;
  }
};

const getSingleTopic = async (t_id) => {
  try {
    const singleTopic = await db.any(
      `select * from topics where id = $1`,
      t_id
    );

    return singleTopic;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllTopics, getTopicsByLessonId, getSingleTopic };
