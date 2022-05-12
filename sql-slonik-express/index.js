const express = require("express");
const { DEV_PORT } = require("./constants");
const errors = require("./errors");
const db = require("./configs/db");
const app = express();

app.use(express.json());

const main = require("./controllers");

app.use("/", main(db));

app.use((req, res, next) => {
  next(errors[404]);
});

app.use(({ statusCode, error }, req, res, next) => {
  res.status(statusCode).json({
    success: false,
    message: error.message,
  });
});

app.listen(process.env.PORT || DEV_PORT, () => {
  console.info(`> listening at: ${process.env.PORT || DEV_PORT}`);
});
