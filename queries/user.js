const db = require ("../db/dbConfig");

const getAllUsers = async () => {
    try {
      const  allUsers = await db.any("SELECT * FROM users");
      return allUsers
    } catch (error) {
        return error
    }
    
};

const createUser = async (data) => {
 try {
    const{ username, password, email} = data
    
   

    const newUser = await db.one("INSERT INTO users( username, password, email) VALUES($1, $2, $3) RETURNING *",
    [ username, password, email]);
    return newUser
 } catch (error) {

    return error
 }
}

const login = async (data) => {
  try {
    const { email } = data;

    const foundUser = await db.any(
        'SELECT * FROM users WHERE email = $1' , email
    );
    if (foundUser.length === 0 ){
      throw{
        message: "error",
        error: "User does not exists please go sign up"
      }  
    } else {
        return foundUser[0]
        


    }
  } catch (error) {
    return error
  }

}

module.exports = {
    getAllUsers, 
    createUser, 
    login
}
