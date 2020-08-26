/*テーブル作成*/
create table users (
                       id serial primary key,
                       name varchar(30) not null,
                       mail varchar(50) not null,
                       filterlevel smallint
);

create table sample (
                        id serial primary key,
                        name varchar(30) not null,
                        mail varchar(50) not null,
                        filterlevel smallint
);

create table friend (
                        id serial primary key,
                        userid INTEGER not null,
                        name varchar(30) not null,
                        latestemolog varchar(30),
                        updated_at timestamp
);

create table emolog (
                        id serial primary key,
                        userid INTEGER not null,
                        friendid INTEGER not null,
                        created_at timestamp,
                        contents varchar(30)
);

create table chat (
                      id serial primary key,
                      userid INTEGER not null,
                      friendid INTEGER not null,
                      contents varchar(30),
                      create_at timestamp
);

create table requestfriend (
                               id serial primary key,
                               userid INTEGER not null,
                               requestfriendid INTEGER not null,
                               create_at timestamp
);

create table emojicode (
                           keyword serial primary key,
                           emoji_code varchar(30)
);


insert into users(name, mail, filterlevel) values
('ichigo.chocomint', 'ichigo@hoge.com', 1),
('banana.chocomint', 'banana@hoge.com', 2),
('pinapple.chocomint', 'pineapple@hoge.com', 3),
('apple.chocomint', 'apple@hoge.com', 4),
('lemon.chocomint', 'lemon@hoge.com', 5)
;

insert into friend(userid, name, latestemolog, updated_at) values
(123, 'ichigo.chocomint', '🍎🍋🍇', '2001-01-01 01:01:01'),
(456, 'banana.chocomint', '🍈🍓🍌', '2002-02-02 02:02:02'),
(789, 'pinapple.chocomint', '🍊🥝🍎', '2003-03-03 03:03:03'),
(321, 'apple.chocomint', '🍋🍇🍈', '2004-04-04 04:04:04'),
(654, 'lemon.chocomint', '🍓🍌🍊', '2005-05-05 05:05:05')
;

insert into emolog(userid, friendid, created_at, contents) values
(1, 2, '2006-06-06 06:06:06', '⛰🌋🗻'),
(2, 1, '2007-07-07 07:07:07', '🏘🏠🏡'),
(1, 3, '2008-08-08 08:08:08', '🐒🦍🐒'),
(3, 1, '2009-09-09 09:09:09', '⭐️🌟⭐️'),
(2, 3, '2010-10-10 10:10:10', '🐈🐈🐈')
;

insert into chat(userid, friendid, contents, create_at) values
(123, 456, 'Hello', '2011-11-11 11:11:11'),
(789, 123, 'Good morning', '2012-12-12 12:12:12'),
(456, 789, 'Good afternoon', '2013-01-13 01:13:13'),
(456, 123, 'Good evening', '2014-02-14 02:14:14'),
(123, 789, 'Good night', '2015-03-15 03:15:15')

;

insert into requestfriend(userid, requestfriendid, create_at) values
(12, 34, '2016-04-16 04:16:16'),
(56, 78, '2017-05-17 05:17:17'),
(91, 23, '2018-06-18 06:18:18'),
(45, 67, '2019-07-19 07:19:19'),
(89, 12, '2020-08-20 08:20:20')
;

insert into users(name, mail, filterlevel) values
  ('ichigo.chocomint', 'hoge@hoge.com', 1),
  ('banana.chocomint', 'hogehoge@hoge.com', 2),
  ('pinapple.chocomint', 'hogehogehoge@hoge.com', 3)
;

insert into emojicode(keyword, emoji_code) values
  ('radio', ':radio:'),
  ('movies', ':movie_camera:'),
  ('bowling',':bowling:'),
  ('bank',':bank:')
;

insert into talk(userid, friendid,contents,create_at) values
  (100, 101,'Hello World !', current_timestamp),
  (101,100, 'Hi !', current_timestamp),
  (101,100,'See you.','2020-08-25 10:23:23')
;

insert into emolog(userid,friendid,create_at,contents) values
  (101,100,'2020-08-25 10:23:23',':grinning: :smiley: :wink: :radio: :credit_card:'),
  (100,101,'2020-08-25 10:23:23',':wink: :radio: :credit_card: :grinning: :smiley:')
;*/



insert into friend(userid, friendid, name, latestemolog) values
 (1, 2, 'hoge', 'emojihoge'),
 (2, 1, 'Trump', ':smile:'),
 (1, 3, 'kim jyoung-un', ':sad:')
;

insert into emolog(userid, friendid, create_at, contents) values
 (1, 2, current_timestamp, ':mountain:'),
 (2, 1, current_timestamp, ':hotel:'),
 (1, 3, current_timestamp, ':gorilla:'),
 (3, 1, current_timestamp, ':space:')
;

