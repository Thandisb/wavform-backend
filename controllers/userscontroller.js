const {getAllUsers, createUser, login} = require("../queries/user")

 const { parsedMessage } = require("../lib/helper/helper")

 const allGetUsersFunc = async(req, res) => {
    const allUsers = await getAllUsers();

    if(allUsers.length === 0){
        res.json({message: "please go create some users"});
    } else {
        res.json(allUsers)
    }

 }

 const createUserFunc = async ( req, res, next) => {
    try {
            const createdUser = await createUser(req.body)
            
            if (createdUser.code =="23505"){
                throw {message: "duplicated", error: parsedMessage(createdUser.detail), status: 409,}
            } else {
              res.json(createdUser)
            }
           } catch (e) {
           
           next(e)
           }
 }

 const loginFunc = async (req, res) => {
    try {
          const foundUser = await login(req.body)  
        if(foundUser.status === 500){
            throw foundUser
        }else{
            res.json({token: foundUser})
        }
         
        } catch (error) {
            res.status(500).json({message: error.message, error: error})
        }
 }

 module.exports = {
    allGetUsersFunc,
    createUserFunc,
    loginFunc
 }
