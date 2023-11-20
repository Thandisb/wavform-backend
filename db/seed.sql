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


