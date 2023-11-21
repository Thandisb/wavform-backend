\c wavform_dev;

INSERT INTO 
    users(username, password, email)
VALUES
    ('stormLord', 'password321', 'wave1@hotmail.com'),
    ('boogieWOnderland', 'earthwindandfire', 'form2@hotmail.com');


INSERT INTO 
    lessons(name) 
VALUES
    ('Notes'),
    ('Rhythm');



INSERT INTO 
    topics(lessons_id, name, description) 
VALUES

    (1, 'Notes on the Piano and Octaves','◦ There are 8 notes in music, ABCDEFG.
    ◦ The notes on the piano are ABCDEFG.
    ◦ This sequence of notes repeats. Example: ABCDEFGABCDEFG
    ◦ Every repetition is called an octave.'),

    (1, 'Intervals and Chords','◦ The relationship between two notes is called an interval.
    ◦ These intervals have various names and qualities (a minor third, a major sixth, a perfect fifth).
    ◦ At least three notes played simultaneously is called a chord.
    ◦ Chords also have qualities, major and minor the most common.'),

    (2, 'Bars and Types of Notes','◦ A bar is a way of understanding time in music. All music is played in terms of bars.
    ◦ Each bar has a certain amount of beats. Usually, in most music, a bar has 4 beats, each being a quarter note.
    ◦ The most common types of notes are whole notes, half notes, quarter notes, eighth notes, and sixteenth notes.
    ◦ Each of these has a certain beat value, which quarter notes the majority of the time representing 1 beat.'),

    (2, 'Tempo','◦ Tempo is how many beats per minute are being played, so how fast the song is.
    ◦ Tempo is very important to the feel of a song, and generally informs how a song should be played and constructed.');


-- INSERT INTO 
--     trivia(id, name) 
-- VALUES
--     (),
--     ();

INSERT INTO
    sequences(name, sequence)
VALUES
    ('example', 'sequence')



-- Insert data into the "creators" table
INSERT INTO creators (name, description, picture, github, linkin)
VALUES
('Jeremy Jimenez', 'About Jeremy', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPRN7ED-65e5562978d0-512', 'https://github.com/jeremytjimenez', 'https://www.linkedin.com/in/jjimenez2016/'),
('Ambarimar Ulloa', 'About Ambarimar', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPLM61F-b12925150cea-512', 'https://github.com/AmbarimarU', 'https://www.linkedin.com/in/ambarimar-ulloa/'),
('Devin Lewis', 'About Devin', 'https://media.licdn.com/dms/image/C4D03AQGdCVq9bJmgLA/profile-displayphoto-shrink_400_400/0/1660673207418?e=1705536000&v=beta&t=alooVChcwyt_uBbmdio5CN_C1EHrzfK7zNu3-8d3qiE', 'https://github.com/devinjlewis', 'https://www.linkedin.com/in/devin-lewis-developer/'),
('Thandi Bristol', 'About Thandi', 'https://media.licdn.com/dms/image/D5603AQGYcRcApNWRbA/profile-displayphoto-shrink_400_400/0/1680580348553?e=1705536000&v=beta&t=YDM-wr1ADs5U5b1fqszBJhVdN1Gwja3c3b2WONKdQwU', 'https://github.com/Thandisb', 'https://www.linkedin.com/in/thandi-bristol-410348271/'),
('Angel Wu', 'About Angel', 'https://avatars.githubusercontent.com/u/122551596?v=4', 'https://github.com/angels178', 'https://www.linkedin.com/in/angel-wu-770b16173/');

