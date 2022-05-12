const { selectBy } = require("../../queries/users");
const errors = require("../../errors");

module.exports = (db) => async (req, res, next) => {
  const { dni, name } = req.body;

  if (!dni && !name) {
    return next(errors[400]);
  }

  const result = await selectBy(db)(
    (dni && "dni") || (name && "name"),
    dni || name
  );

  if (!result.ok) {
    return next(errors[400]);
  }

  res.status(200).json({
    success: true,
    data: result.data,
  });
};
