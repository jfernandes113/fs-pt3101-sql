const router = require("express").Router();

module.exports = (db) => {
  const getAll = require("./get-all");

  router.get("/", getAll(db));

  return router;
};
