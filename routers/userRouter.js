const express = require("express")
const router = express.Router()


 

const checkEmpty = require("../lib/checkEmpty/checkEmpty")


const { allGetUsersFunc, createUserFunc, loginFunc  } = require("../controllers/usersController");



router.get("/",  allGetUsersFunc)



router.post("/create-user",  checkEmpty, createUserFunc)
    
   

 
router.post("/login", loginFunc);

module.exports = router;