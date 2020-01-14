use scobbyDoo_db;




# -- CREATE A TABLE FOR OPTIONS
# CREATE TABLE options (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     step_text_id bigint NOT NULL,
#     optionText VARCHAR(100) NOT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (step_text_id) REFERENCES story_text(id)
# );
#
# -- CREATE A TABLE FOR PICTURES
# CREATE TABLE pictures (
#     id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     pic varchar(250) NOT NULL,
#     PRIMARY KEY (id)
# );
#
# alter table story_text
#      add pic_url int UNSIGNED;
#
#
#
# ALTER TABLE story_text ADD FOREIGN KEY (pic_url) REFERENCES pictures(id);
#
# Delete from story_text;

use scobbyDoo_db;
alter table pictures
     add pic_url varchar(250);

alter table story_text
drop column nextStoryTextID;


update pictures set pictures.pic_url = 'testurl.com'
where id = 1;

#
# RENAME TABLE StoryOptions to story_options;

-- INSERT STATEMENTS FOR STORYTEXT
# INSERT INTO story_text (text, pic_url) values ('text', 'url');
# INSERT INTO story_text (text, option1, option2, option3, option4, pic_url) VALUES ('test', null, null, null, null, 1);
# INSERT INTO story_text (text, pic_url) VALUES ('test2', 1);
# INSERT INTO story_text (text, pic_url)
# VALUES ('Welcome to Crystal Cove...', 4),
#        ('Look its Mayor Jones... ', 5),
#        ('Creeeaaakkk... Mayor Jones looks up from the noise!', 5);
INSERT INTO story_text (text, pic_url) VALUES ('You solved the mystery!', 42 );
INSERT INTO story_text (text) VALUES ('You stayed in bed... But the bed starts to shake and lift off the ground!'),
                                     ('The mayor falls to the floor.'),
                                     ('He then stumbles to his feet...');



INSERT INTO story_options (step_text_id, option_text)
VALUES (null, 'Run away'),
       (null, 'Attack the monster');



-- INSERT STATEMENTS FOR pictures
INSERT INTO pictures (pic_url)
VALUES ('https://i.imgur.com/ErYd1G5.png');


-- INSERT STATEMENTS FOR options



ALTER TABLE story_options MODIFY step_text_id int null;

delete from story_options;