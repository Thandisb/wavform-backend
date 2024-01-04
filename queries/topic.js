const db = require("../db/dbConfig");

const getAllDetails = async () => {
  try {
    const getTopicDetails = await db.any(`SELECT * from topics_details`);

    return getTopicDetails;
  } catch (error) {
    return error;
  }
};

const getDetailsByTopicId = async (td_id) => {
  try {
    // use inner join 
    const getAllDetailsByTopicsId = await db.any(
      `SELECT * FROM topics_details INNER JOIN topics ON topics.id = topics_details.topics_id WHERE topics.id=$1`,
      td_id
    );

    return getAllDetailsByTopicsId;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllDetails,
  getDetailsByTopicId,
};
