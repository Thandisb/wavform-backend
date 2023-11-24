const db = require("../db/dbConfig");

const getAllCreators = async () => {
  try {
    const getAll = await db.any("SELECT * FROM creators");
    return getAll;
  } catch (error) {
    console.log(error, 'get all creators failed');
  }
};

const getSingleCreator = async (id) => {

    try {
        const getSingle = await db.any('SELECT * FROM creators WHERE id = $1', id);
         return getSingle;
        //console.log(getSingle)
    } catch (error) {
        console.log(error, 'get single creator failed');
    }
};

module.exports = { getAllCreators, getSingleCreator};