const mongoose = require("mongoose");

const emotionSchema = new mongoose.Schema({
  name: { type: String, required: true },
  description: { type: String, required: true },
  affirmations: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Affirmations",
    },
  ],
  examples: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Examples",
    },
  ],
  solutions: [
    {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Solutions",
    },
  ],
});

const Emotions = mongoose.model("Emotions", EmotionSchema);

module.exports = Emotions;
