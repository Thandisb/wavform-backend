const db = require("../db/dbConfig");

const getAllDetails = async () => {
  try {
    const getTopicDetails = await db.any(`select * from topics_details`);

    return getTopicDetails;
  } catch (error) {
    return error;
  }
};

const getDetailsByTopicId = async (td_id) => {
  try {
    // use inner join 
    const getAllDetailsByTopicsId = await db.any(
      `select * from topics_details inner join topics on topics.id = topics_details.topics_id where topics.id=$1`,
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
