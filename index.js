const express = require("express");
const app = express();
const port = 3050;
const alumnoController = require("./src/controllers/alumnoController")


app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);

const cors=require("cors");
const corsOptions ={
   origin:'*', 
   credentials:true,            //access-control-allow-credentials:true
   optionSuccessStatus:200,
}
app.use(cors(corsOptions)) // Use this after the variable declaration

app.get("/", (req, res) => {
  res.json({ message: "ok" });
});

app.get("/alumno", alumnoController.list);
app.post("/alumno", alumnoController.store);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});