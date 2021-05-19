
     SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = emotions.emotion_id;


/* working */
          SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = examples.emotion_id JOIN char_examples ON char_examples.emotion_id = bullets.emotion_id;

/* working */
                SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = examples.emotion_id JOIN char_examples ON char_examples.emotion_id = bullets.emotion_id WHERE emotions.emotion_id = 2;

                /* Bullets only */
SELECT * FROM emotions JOIN bullets ON bullets.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 3;

             
SELECT * FROM char_examples;

                /* Char-Examples only */
SELECT * FROM emotions JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 2;

                /* Examples Only */

                SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 4;


                /* Single Char Example for Emotion  */


          SELECT * FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 2 AND char_examples.char_example_id = 3;

            SELECT emotions.emotion_id, emotions.name, emotions.description, examples.example_body, char_examples.char_example_body, bullets.bullet_body FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 2 AND bullets.char_example_id = 3;

               SELECT emotions.emotion_id, emotions.name, examples.example_body, char_examples.char_example_body, bullets.bullet_body FROM emotions JOIN examples ON examples.emotion_id = emotions.emotion_id JOIN char_examples ON char_examples.emotion_id = emotions.emotion_id JOIN bullets ON bullets.emotion_id = emotions.emotion_id WHERE emotions.emotion_id = 2 AND bullets.char_example_id = 3 AND char_examples.char_example_id = 3;