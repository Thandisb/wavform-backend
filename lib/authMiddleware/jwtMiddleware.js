const jwt = require("jsonwebtoken")

function jwtMiddleWare(req, res, next){
   
 try {
    if(req.headers && req.headers.authorization){
        let notDecodedToken = req.headers.authorization;

        let slicedToken = notDecodedToken.slice(7);
        
        let decodedToken = jwt.verify(
            slicedToken,
            process.env.JWT_TOKEN_SECRET_KEY
        )
        

        res.locals.decodedData = decodedToken;
        console.log(res.locals.decodedData)

        next();
    } else{
        throw { message: "you dont have permission"}
    }
} catch (e) {
    res.status(500).json({message:"error", error: e.message });
   
}

}

module.exports = jwtMiddleWare;