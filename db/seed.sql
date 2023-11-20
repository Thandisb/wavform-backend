\c lessons;

INSERT INTO 
    lessons(name) 
VALUES
    ('Notes'),
    ('Rhythm');


INSERT INTO 
    topics(lessons_id, name, description) 
VALUES
    (1, 'Octaves','The octave is a fundamental musical interval that spans eight diatonic notes or twelve semitones.'),

    (1, 'Notes on the Piano','The piano utilizes 88 keys spanning over seven octaves, each key corresponding to a specific musical pitch.'),

    (1, 'Intervals','An interval in music refers to the distance between two pitches.'),

    (1, 'Chords','Chords are formed by playing three or more notes together.'),

    (2, 'Bars','The bar is the basic unit of time in music. It defines the periodic division of rhythm'),

    (2, 'Types of Notes','Notes represent different durations of sounds.'),

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