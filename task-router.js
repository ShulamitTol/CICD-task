const express = require("express");



const taskRouter = express.Router();
taskRouter.route("/")
.get(findSingleElement );

function findSingleElement(req,res) {
  // Access environment variable with array as a string
const arrayString = process.env.MY_ARRAY;



    const arr=JSON.parse(arrayString);
    let result = 0;
  
    for (let i = 0; i < arr.length; i++) {
      result ^= arr[i];
    }
  console.log(arr,result)
    res.send("the result"+result) ;
    
  };



module.exports = taskRouter;