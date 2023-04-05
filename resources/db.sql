USE `enjoytrips` ;

DROP TABLE IF EXISTS `enjoytrips`.`members` ;

CREATE TABLE IF NOT EXISTS `enjoytrips`.`members` (
  `user_id` VARCHAR(16) NOT NULL,
  `user_name` VARCHAR(20) NOT NULL,
  `user_password` VARCHAR(16) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `flag` int DEFAULT 0,
  `join_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into `enjoytrips`.`members` (user_id, user_name, user_password, email, join_date)
values	('admin', '관리자', '1234', 'admin@ssafy.com', now());

DROP TABLE IF EXISTS enjoytrips.board ;

CREATE TABLE IF NOT EXISTS enjoytrips.board (
  article_no int NOT NULL auto_increment,
  user_id VARCHAR(20) NOT NULL,
  subject VARCHAR(100) NOT NULL,
  content VARCHAR(2000) NOT NULL,
  hit    int NOT NULL DEFAULT 0,
  date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (article_no))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
	
commit;
