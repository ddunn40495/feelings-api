const mongoose = require("mongoose");

const exampleSchema = new mongoose.Schema({
  body: { type: String, required: true },
});

const Example = mongoose.model("Examples", exampleSchema);

module.exports = Example;
