\c wavform_dev;

INSERT INTO 
    users(username, password, email)
VALUES
    ('stormLord', 'password321', 'wave1@hotmail.com'),
    ('boogieWOnderland', 'earthwindandfire', 'form2@hotmail.com');


INSERT INTO 
    lessons(name) 
VALUES
    ('Piano'),
    ('Technique'),
    ('Theory'),
    ('Harmony');


INSERT INTO 
    topics (lessons_id, name)
VALUES
    (1, 'The Basics of the Piano'),
    (1, 'Piano Keys: Beyond the Basics'),
    (1, 'Piano Pulse: Rhythms and Beats'),
    (2, 'Octave Odyssey'),
    (2, 'Scale Mastery'),
    (2, 'Scales Galore'),
    (3, 'Interval Insight'),
    (4, 'Chords Unleashed'),
    (4, 'Harmony in Action');

INSERT INTO 
    topics_details (topics_id, name, description, activity)
VALUES
    (1, 'Intoduction to the Piano', 'The piano comprises 88 keys, encompassing both black and white keys, with each key representing a musical note. Within an octave, there are eight white keys and five black keys. The white keys correspond to the natural musical tones A, B, C, D, E, and G, while the black keys represent the sharps and flats of these notes. Each black key is identified by two names: the sharp of the white key below it and the flat of the white key above it. The black sharp keys are recognized as A#, C#, D#, F#, and G#, and their flat counterparts are B♭, D♭, E♭, G♭, and A♭. In these lessons, we present a simplified piano version, focusing on a single octave to facilitate learning for beginners while still enabling the playing of numerous songs.','Engage in exercises to practice playing and recognizing sharps and flats within a single octave. Begin by playing the natural notes and familiarize yourself with their distinct sounds. Next, experiment with the sharp and flat variations of each note to discern the subtle differences. For instance, start by playing C, then transition to C# (also known as Db), and finally, proceed to D. This exercise illustrates the dual role of black keys, demonstrating how they function as both sharps and flats. Repeat this process with other notes within the octave to enhance your understanding and auditory recognition of these musical nuances.'),
    (1, 'Understanding Notes','As mentioned in the previous lesson, the white keys on the piano represent natural notes (A, B, C, D, E, F, G), each serving as a symbol for a specific musical sound inscribed on a staff. The notes on the staff maintain the same alphabetical pattern (A, B, C, D, E, F, G), with this sequence repeating across the staff. A standard staff comprises five lines and four spaces, and each line or space denotes a distinct note, progressing from the lowest note, A, to the highest note, G. Notes play a crucial role in providing musical information, indicating both the pitch (determined by the placement of the note on the staff) and the duration of the pitch (based on the accompanying symbol). In this lesson, we will explore three types of musical notes. The first note under discussion is the whole note, identifiable by its open circle shape. A whole note is assigned an entire measure count, equivalent to four counts. Consequently, a whole note on the staff instructs the musician to play and sustain the note for the entire four-count duration. Moving on to the half note, it also features an open circle but includes a stem extending from the circle. A half note receives half the count of a whole note, lasting for 2 counts. Finally, the quarter note is represented by a filled-in circle with a stem extending from it. A quarter note is allocated a quarter of the count of a whole note, with a duration of one count. These three notes, the whole note, half note, and quarter note, form the foundation of understanding musical notation and rhythm.', 'Engage in practical exercises to grasp note durations on the piano. Perform each note while verbally counting the corresponding beats. For instance: Whole Note: Play a note on the piano and count: "1, 2, 3, 4." Ensure the note is sustained for the entire four-count duration. Half Note: Play another note and count: "1, 2." This time, the note should be sustained for two counts, reflecting the half note duration. Quarter Note: Play yet another note and count: "1." Allow the note to last for just one count, adhering to the quarter note duration. By performing these exercises, you will reinforce your understanding of how each note corresponds to specific beats and durations. This practical approach will enhance your ability to execute these note durations on the piano with precision and rhythmic accuracy. '),
    (1, 'Simple Melodic Patterns',' A melody is a succession of notes that together form a musical phrase. Melodies are crafted by playing a sequence of notes on a specific instrument. In this lesson, we will delve into uncomplicated melodic patterns that are both easy to play and remember, making them ideal for beginners venturing into the realm of melody creation on an instrument. Up and Down Pattern: This is a straightforward ascending and descending sequence. Play a sequence of notes moving upward, followed by a descent. It is a common and simple pattern that serves as an excellent starting point. Repeated Notes: Replicate a single note or a short sequence of notes. Repeating notes produce a rhythmic and percussive effect, finding applications in various musical contexts. Skipping Patterns: Play every other note in a scale, introducing intervals. This creates a melodic and jumping quality in the sequence, adding interest to the melody. Repeated Patterns: Establish a short repeating pattern with a few notes. Frequently used in melodies, repeated patterns instill a sense of familiarity and catchiness. These patterns provide a foundational understanding for constructing more intricate melodies. As you gain confidence, experiment with combining patterns and introducing variations to craft your own unique melodies. The goal is to encourage creative exploration and personal expression in your musical journey.', 'Engage in creating simple melodic patterns by practicing the ones introduced in our lesson. Here are a few examples to guide you: Up and Down Pattern Example in C Major: Play the following sequence: C D E F G F E D C. This illustrates the up-and-down pattern in the key of C major. Repeating Notes Pattern Example: Experiment with repeating notes using: C C C C D D D D. This showcases the rhythmic and percussive effect of repeating the same or similar notes. Skipping Pattern Example in C Major: Explore skipping patterns with: C E G B D. Notice the melodic and jumping quality created by playing every other note in the C major scale. Repeating Pattern Example: Try a repeating pattern with: C D E D C D E D. This demonstrates a short repeating sequence commonly used in melodies for familiarity and catchiness. Use these examples as a starting point and feel free to modify and expand upon them. As you become more comfortable, experiment with different variations, combine patterns, and explore other keys. This practice will help solidify your understanding of melodic patterns and enhance your ability to create your own musical phrases..'),
    (1, 'Playing a Simple Tune','In our final lesson, let us dive into playing some uncomplicated tunes. These songs are intentionally simple and repetitive, making them ideal for beginners to practice within a single octave. Approach each note with deliberate precision, taking your time to familiarize yourself with the melodies. As you grow more comfortable, gradually increase your playing speed. Enjoy the process and have fun with your piano journey! Congratulations! You have successfully completed the basics of piano lessons. Now, you are ready to play straightforward tunes on the piano. Maintain a consistent practice routine and continue following our piano lessons to progress to more intricate songs. With dedication and practice, you will soon find yourself playing more complex melodies. Happy playing, and best of luck on your musical journey!', 'Playing Simple Melodies: Follow the given patterns to play three uncomplicated tunes. See if you can identify the songs based on the provided sequences. Tune 1: Repeat the notes: E E E, E E E, E G C D E. Tune 2: Play the sequence: E D C D E E E, D D D E G G, E D C D E E E, E D D E D C. Tune 3: Follow the pattern: C C C D E E D, E F F G A A G, E D D C D E E. Challenge yourself by figuring out the songs, and enjoy playing these straightforward melodies! ');
    
    
    
    -- (1, 'Intoduction to the Piano', 'There are 8 notes in music, ABCDEFG.'),
    -- (1, 'Understanding Notes','The notes on the piano are ABCDEFG.'),
    -- (1, 'Simple Melodic Patterns','This sequence of notes repeats. Example: ABCDEFGABCDEFG.'),
    -- (1, 'Playing a Simple Tune','Every repetition is called an octave.');
    -- (1, 'In addition, a half-step is the minimun distance between notes.'),
    -- (1, 'A whole-step is composed of 2 half-steps.'),
    -- (1, 'There are also notes considered accidentals.'),
    -- (1, 'Accidentals can be sharp (#) or flat (b).'),
    -- (1, 'When a note is sharp, it is raised by a half-step.'),
    -- (1, 'When a note is flat, it is lowered by a half-step.'),
    -- (2, 'The relationship between two notes is called an interval.'),
    -- (2, 'These intervals have various names and qualities:'),
    -- (2, 'A minor third.'),
    -- (2, 'A major sixth.'),
    -- (2, 'A perfect fifth.'),
    -- (2, 'At least three notes played simultaneously is called a chord.'),
    -- (2, 'Chords also have <i>qualities</i>, major and minor the most common.'),
    -- (3, 'A scale is at its core a grouping of notes within an octave which sound "good" together.'),
    -- (3, 'All the white keys starting on C (CDEFGABC) make up the scale C Major.'),
    -- (3, 'The most common scales, Major and Minor, starting on any note are composed from a set of half-steps and whole-steps from that note (a whole is 2 half-steps).'),
    -- (3, 'Major: WWHWWWH'),
    -- (3, 'C -> D = whole step '),
    -- (3, 'D -> E = whole step'),
    -- (3, 'E -> F = half step'),
    -- (3, 'F -> G = whole step'),
    -- (3, 'G -> A = whole step'),
    -- (3, 'A -> B = whole step'),
    -- (3, 'B -> C = half step'),
    -- (3, 'Minor: WHWWHWW'),
    -- (4, 'Play this sequence in order:'),
    -- (5, 'A bar is a way of understanding time in music. All music is played in terms of bars.'),
    -- (5, 'Each bar has a certain amount of beats. Usually, in most music, a bar has 4 beats, each being a quarter note.'),
    -- (5, 'The most common types of notes are whole notes, half notes, quarter notes, eighth notes, and sixteenth notes.'),
    -- (5, 'Each of these has a certain beat value, which quarter notes the majority of the time representing 1 beat.'),
    -- (6, 'Tempo is how many beats per minute are being played, so how fast the song is.'),
    -- (6, 'Tempo is very important to the feel of a song, and generally informs how a song should be played and constructed.');

-- INSERT INTO 
--     trivia(id, name) 
-- VALUES
--     (),
--     ();

INSERT INTO
    sequences(name, sequence)
VALUES
    ('example', 'sequence');



INSERT INTO 
creators(name, description, picture, github, linkin)
VALUES
('Jeremy Jimenez', 'About Jeremy', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPRN7ED-65e5562978d0-512', 'https://github.com/jeremytjimenez', 'https://www.linkedin.com/in/jjimenez2016/'),
('Ambarimar Ulloa', 'About Ambarimar', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPLM61F-b12925150cea-512', 'https://github.com/AmbarimarU', 'https://www.linkedin.com/in/ambarimar-ulloa/'),
('Devin Lewis', 'About Devin', 'https://media.licdn.com/dms/image/C4D03AQGdCVq9bJmgLA/profile-displayphoto-shrink_400_400/0/1660673207418?e=1705536000&v=beta&t=alooVChcwyt_uBbmdio5CN_C1EHrzfK7zNu3-8d3qiE', 'https://github.com/devinjlewis', 'https://www.linkedin.com/in/devin-lewis-developer/'),
('Thandi Bristol', 'About Thandi', 'https://media.licdn.com/dms/image/D5603AQGYcRcApNWRbA/profile-displayphoto-shrink_400_400/0/1680580348553?e=1705536000&v=beta&t=YDM-wr1ADs5U5b1fqszBJhVdN1Gwja3c3b2WONKdQwU', 'https://github.com/Thandisb', 'https://www.linkedin.com/in/thandi-bristol-410348271/'),
('Angel Wu', 'About Angel', 'https://avatars.githubusercontent.com/u/122551596?v=4', 'https://github.com/angels178', 'https://www.linkedin.com/in/angel-wu-770b16173/');

