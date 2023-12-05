const express = require("express")
const router = express.Router()


 
const { allGetUsersFunc, createUserFunc, loginFunc } = require("../controllers/usersController");

const jwtMiddleWare = require("../lib/authMiddleware/jwtMiddleware")


router.get("/",  jwtMiddleWare, allGetUsersFunc)



router.post("/create-user",   createUserFunc)
    
   

 
router.post("/login", loginFunc);



module.exports = router;