module.exports = {
  400: {
    statusCode: 400,
    error: new Error("something went wrong"),
  },
  401: {
    statusCode: 401,
    error: new Error("unauthorized"),
  },
  403: {
    statusCode: 403,
    error: new Error("forbidden"),
  },
  404: {
    statusCode: 404,
    error: new Error("path not found"),
  },
  418: {
    statusCode: 418,
    error: new Error("i'm a teapot!!"),
  },
  500: {
    statusCode: 500,
    error: new Error("oops something went very wrong!"),
  },
};
