const mongoose = require("mongoose");

const affirmationSchema = new mongoose.Schema({
  body: { type: String, required: true },
});

const Affirmations = mongoose.model("Affirmations", affirmationsSchema);

module.exports = Affirmations;
