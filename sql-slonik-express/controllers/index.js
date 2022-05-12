const router = require("express").Router();

module.exports = (db) => {
  const usersControllers = require("./users");
  const booksControllers = require("./books");

  router.use("/users", usersControllers(db));
  router.use("/books", booksControllers(db));

  return router;
};
