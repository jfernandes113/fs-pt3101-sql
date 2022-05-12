const slonik = require("slonik");
const { DB_URL } = require("../constants");

module.exports = slonik.createPool(DB_URL);
