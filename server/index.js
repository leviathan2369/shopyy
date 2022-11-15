//Imports From Packages

const express = require("express");
const mongoose = require("mongoose");

//Imports From Other Files
const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

//INIT
const PORT =  process.env.PORT || 3000;
const app = express();
const DB =
 "mongodb+srv://Hamza:aJcl1PL3qzzpZE0i@cluster0.cbxflcr.mongodb.net/?retryWrites=true&w=majority";
//middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);
//Connections
mongoose
 .connect(DB)
 .then(() => {
  console.log("Connection Successful");
 })
 .catch((e) => {
  console.log(e);
 });
//Client -> middleware -> Server -> Client

app.listen(PORT,"0.0.0.0" ,() => {
 console.log(`connected at port ${PORT}`);
});
