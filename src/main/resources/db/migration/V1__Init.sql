DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS member;

CREATE TABLE member
(
    id       BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email    VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE post
(
    id        BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    content   VARCHAR(255),
    member_id BIGINT NOT NULL,
    FOREIGN KEY (member_id) REFERENCES member (id)
);