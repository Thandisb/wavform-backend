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

    (1, 'Notes on the Piano and Octaves', '◦ There are 8 notes in music, ABCDEFG. 
    ◦ The notes on the piano are ABCDEFG. 
    ◦ This sequence of notes repeats. Example: ABCDEFGABCDEFG. 
    ◦ Every repetition is called an octave. 
    ◦ In addition, a half-step is the minimun distance between notes. 
    ◦ A whole-step is composed of 2 half-steps.
    ◦ There are also notes considered accidentals. 
    ◦ Accidentals can be sharp (#) or flat (b).
    ◦ When a note is sharp, it is raised by a half-step.
    ◦ When a note is flat, it is lowered by a half-step.'),

    (1, 'Intervals and Chords','◦ The relationship between two notes is called an interval. 
    ◦ These intervals have various names and qualities: 
        ∙ A minor third. 
        ∙ A major sixth.
        ∙ A perfect fifth. 
    ◦ At least three notes played simultaneously is called a chord. 
    ◦ Chords also have qualities, major and minor the most common.'),

    (1, 'Scales', '◦ A scale is at its core a grouping of notes within an octave which sound "good" together. 
    ◦ All the white keys starting on C (CDEFGABC) make up the scale C Major. 
    ◦ The most common scales, Major and Minor, starting on any note are composed from a set of half-steps and whole-steps from that note (a whole is 2 half-steps).
    ◦ Major: WWHWWWH
         ∙ C -> D = whole step 
         ∙ D -> E = whole step
         ∙ E -> F = half step
         ∙ F -> G = whole step
         ∙ G -> A = whole step
         ∙ A -> B = whole step
         ∙ B -> C = half step
    ◦ Minor: WHWWHWW'),

    (2, 'Bars and Types of Notes','◦ A bar is a way of understanding time in music. All music is played in terms of bars. 
    ◦ Each bar has a certain amount of beats. Usually, in most music, a bar has 4 beats, each being a quarter note. 
    ◦ The most common types of notes are whole notes, half notes, quarter notes, eighth notes, and sixteenth notes.
    ◦ Each of these has a certain beat value, which quarter notes the majority of the time representing 1 beat.'),

    (2, 'Tempo','Tempo is how many beats per minute are being played, so how fast the song is.');


-- INSERT INTO 
--     trivia(id, name) 
-- VALUES
--     (),
--     ();

INSERT INTO
    sequences(name, sequence)
VALUES
    ('example', 'sequence')