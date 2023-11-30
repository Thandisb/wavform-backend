const db = require("../db/dbConfig");

const getAllCreators = async () => {
  try {
    const getAll = await db.any("SELECT * FROM creators");
    return getAll;
  } catch (error) {
    console.log(error, 'get all creators failed');
  }
};

const getSingleCreator = async () => {

    try {
        const getSingle = await db.any('SELECT * FROM creators WHERE id = $1', id);
        return getSingle;
    } catch (error) {
        console.log(error, 'get single cfeator failed');
    }
};

module.exports = { getAllCreators, getSingleCreator};