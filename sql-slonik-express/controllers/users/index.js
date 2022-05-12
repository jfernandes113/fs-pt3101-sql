const router = require("express").Router();

module.exports = (db) => {
  const getAll = require("./get-all");
  const getByProperty = require("./get-by-property");

  router.get("/", getAll(db));
  router.post("/", getByProperty(db));

  return router;
};
