CREATE TABLE if not exists `news`
(
        id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        content TEXT,
        publish_date DATE NOT NULL
);