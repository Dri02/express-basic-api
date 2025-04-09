const express = require("express");
const cors = require("cors");
const morgan = require("morgan");
const routes = require("./routes.js");

const app = express();

app.use(cors());
app.use(morgan("dev"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use(routes);

app.listen(4000, () => {
  console.log(`Server on port ${4000}`);
});
