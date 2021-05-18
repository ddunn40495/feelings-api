const mongoose = require("mongoose");

const emotionSchema = new mongoose.Schema({
  name: { type: String, required: true },
  description: { type: String, required: true },
  example: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Example",
    },
  ],
  dougfeels: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "DougFeel",
    },
  ],
  bullets: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Bullet",
    },
  ],
});

const Emotion = mongoose.model("Emotion", emotionSchema);

module.exports = Emotion;
