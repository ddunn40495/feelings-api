
     SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = emotions.emotion_id;

          SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 2;

/* working */
          SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = examples.emotion_id JOIN char_examples ON char_examples.emotion_id = bullets.emotion_id;

/* working */
                SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = examples.emotion_id JOIN char_examples ON char_examples.emotion_id = bullets.emotion_id WHERE emotions.emotion_id = 2;

                /* Bullets only */
SELECT * FROM emotions JOIN bullets ON bullets.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 3;

             


                /* Char-Examples only */
SELECT * FROM emotions JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 2;

                /* Examples Only */

                SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 4;