function checkEmpty(req, res, next) {

    const { email, password, username } = req.body;

    let errObj = {};

    if (!username) {
        
            errObj.username = "Username cannot be empty"
        
    }

    if (!email) {
        
            errObj.email = "email cannot be empty"
        
    }

    if (!password) {
        
            errObj.password = "password must contains at least 1 uppercase letter, 1 lowercase letter, 1 number, 1 special characters, and 8 characters long"
        
    }

    if(Object.keys(errObj).length > 0){
       return res.status(500).json({
         message: "error",
         error: errObj,
       });
    } else {
        next();
    }
}

module.exports = checkEmpty