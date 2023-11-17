
-- Connect to the "creators" database
\c creators

-- Create the "creators" table if it doesn't exist
CREATE TABLE IF NOT EXISTS creators (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    picture TEXT, 
    github TEXT,
    linkin TEXT
);

-- Insert data into the "creators" table
INSERT INTO creators (name, description, picture, github, linkin)
VALUES
('Jeremy Jimenez', 'About Jeremy', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPRN7ED-65e5562978d0-512', 'https://github.com/jeremytjimenez', 'https://www.linkedin.com/in/jjimenez2016/'),
('Ambarimar Ulloa', 'About Ambarimar', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPLM61F-b12925150cea-512', 'https://github.com/AmbarimarU', 'https://www.linkedin.com/in/ambarimar-ulloa/'),
('Devin Lewis', 'About Devin', 'https://media.licdn.com/dms/image/C4D03AQGdCVq9bJmgLA/profile-displayphoto-shrink_400_400/0/1660673207418?e=1705536000&v=beta&t=alooVChcwyt_uBbmdio5CN_C1EHrzfK7zNu3-8d3qiE', 'https://github.com/devinjlewis', 'https://www.linkedin.com/in/devin-lewis-developer/'),
('Thandi Bristol', 'About Thandi', 'https://media.licdn.com/dms/image/D5603AQGYcRcApNWRbA/profile-displayphoto-shrink_400_400/0/1680580348553?e=1705536000&v=beta&t=YDM-wr1ADs5U5b1fqszBJhVdN1Gwja3c3b2WONKdQwU', 'https://github.com/Thandisb', 'https://www.linkedin.com/in/thandi-bristol-410348271/'),
('Angel Wu', 'About Angel', 'https://avatars.githubusercontent.com/u/122551596?v=4', 'https://github.com/angels178', 'https://www.linkedin.com/in/angel-wu-770b16173/');




-- \c creators

-- INSERT INTO 
-- creators (id, name, description, picture, github, linkin)
-- VALUES
-- ('Jeremy Jimenez', 'About Jeremy', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPRN7ED-65e5562978d0-512', 'https://github.com/jeremytjimenez', 'https://www.linkedin.com/in/jjimenez2016/'),
-- ('Ambarimar Ulloa', 'About Ambarimar', 'https://ca.slack-edge.com/TCVA3PF24-U04DJPLM61F-b12925150cea-512', 'https://github.com/AmbarimarU', 'https://www.linkedin.com/in/ambarimar-ulloa/'),
-- ('Devin Lewis', 'About Devin', 'https://media.licdn.com/dms/image/C4D03AQGdCVq9bJmgLA/profile-displayphoto-shrink_400_400/0/1660673207418?e=1705536000&v=beta&t=alooVChcwyt_uBbmdio5CN_C1EHrzfK7zNu3-8d3qiE', 'https://github.com/devinjlewis', 'https://www.linkedin.com/in/devin-lewis-developer/'),
-- ('Thandi Bristol', 'About Thandi', 'https://media.licdn.com/dms/image/D5603AQGYcRcApNWRbA/profile-displayphoto-shrink_400_400/0/1680580348553?e=1705536000&v=beta&t=YDM-wr1ADs5U5b1fqszBJhVdN1Gwja3c3b2WONKdQwU', 'https://github.com/Thandisb', 'https://www.linkedin.com/in/thandi-bristol-410348271/'),
-- ('Angel Wu', 'About Angel', 'https://avatars.githubusercontent.com/u/122551596?v=4', 'https://github.com/angels178', 'https://www.linkedin.com/in/angel-wu-770b16173/');