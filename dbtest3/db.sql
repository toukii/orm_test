DROP DATABASE IF EXISTS dbt;
CREATE DATABASE dbt charset=utf8;
use dbt;
CREATE TABLE user(
id int PRIMARY KEY auto_increment,
name char(20),
pid int,
UNIQUE KEY(name)
)charset=utf8;

CREATE TABLE profile(
id int PRIMARY KEY auto_increment,
name char(50),
uid int
)charset=utf8;

CREATE TABLE post(
id int PRIMARY KEY auto_increment,
tsid int,
KEY tag(tsid)
)charset=utf8;

CREATE TABLE tag(
id int PRIMARY KEY auto_increment,
psid int,
KEY post(psid)
)charset=utf8;

CREATE TABLE prefix_post_tags(
tag_id int,
post_id int,
KEY tag(tag_id),
KEY post(post_id)
)charset=utf8;

CREATE TABLE prefix_tag_posts(
tag_id int,
post_id int,
KEY tag(tag_id),
KEY post(post_id)
)charset=utf8;

CREATE TABLE post_tags(
tag_id int,
post_id int,
KEY tag(tag_id),
KEY post(post_id)
)charset=utf8;

CREATE TABLE tag_posts(
tag_id int,
post_id int,
KEY tag(tag_id),
KEY post(post_id)
)charset=utf8;