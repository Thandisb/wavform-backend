function parsedMessage(text){
    let splitted = text.split(" ");
  
 
     let messageString = splitted[1];
 
     let splittedV2 = messageString.split("=");
 
    let field = splittedV2[0].replace(/[()]/g, "");
    let message = splittedV2[1].replace(/[()]/g, "");
 
   console.log(field, message)
   return `${field} ${message} is taken, please try another ${field}`
 }
 
 module.exports={
     parsedMessage
 }