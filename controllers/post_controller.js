// =======================================
//
//          POST CONTROLLER
//
// =======================================

// =========================
//       DEPENDENCIES
// =========================
const express = require("express");
// const async = require("async");
const router = express.Router();
const Emotion = require("../models/emotions");
const Bullet = require("../models/bullets");
const DougFeel = require("../models/dougfeels");
const Example = require("../models/examples");

// =========================
//      ROUTES
// =========================
//Create Emotion

router.post("/emotion", (req, res) => {
  Emotion.create(req.body, (err, createdEmotion) => {
    console.log(
      `This is the emotion you just created ==================================${createdEmotion}================================================`
    );
    res.json(createdEmotion);
  });
});

//Create Bullet
router.post("/emotionID/bullet", (req, res) => {
  Emotion.findById(req.params.emotionID, (err, foundEmotion) => {
    Bullet.create(req.body, (err, createdBullet) => {
      foundEmotion.comments.push(createdBullet);
      foundEmotion.save((err, data) => {
        res.json(foundEmotion);
      });
    });
  });
});

module.exports = router;
