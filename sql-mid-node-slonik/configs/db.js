const slonik = require("slonik");
const DB_URL = "postgres://user1:1234@localhost:5432/prueba";

const db = slonik.createPool(DB_URL);

module.exports = db;
