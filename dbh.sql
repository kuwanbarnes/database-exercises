-- MySQL Script generated by MySQL Workbench
-- Wed Mar  3 11:21:25 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- ---------
-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user` (
                                             `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,


                                             `user_firstname` VARCHAR(45) NOT NULL,
                                             `user_lastname` VARCHAR(45) NOT NULL,
                                             email VARCHAR(45) NOT NULL,
                                             password VARCHAR(10) NOT NULL,
                                             isAdmin BOOLEAN default false,
                                             PRIMARY KEY (`id`));



-- -----------------------------------------------------
-- Table `mydb`.`create_questions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create_questions` (
                                                         `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                                    correct_answerID INT NOT NULL ,
                                                         `content` VARCHAR(10000) NOT NULL,
                                                         PRIMARY KEY (`id`),
                                                         FOREIGN KEY (correct_answerID)
                                              REFERENCES create_answer(id));



-- -----------------------------------------------------
-- Table `mydb`.`create_answer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `create_answer` (
                                                      `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                            question_id INT UNSIGNED NOT NULL ,
                                                      `content` VARCHAR(10000) NOT NULL,
                                                      PRIMARY KEY (`id`),
                                                      FOREIGN KEY (`question_id`)
                                                          REFERENCES `create_questions` (`id`));


-- -----------------------------------------------------
-- Table `mydb`.`admin_privilages`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `mydb`.`quest_answ`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Table `mydb`.`TEST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TEST` (
                                             `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                             class_id  INT UNSIGNED NOT NULL,



                                             PRIMARY KEY (`id`),


                                                 FOREIGN KEY (`question_id`)
                                                     REFERENCES quest_answ (`questions_ID`)
                                                    );


-- -----------------------------------------------------
-- Table `mydb`.`user_privilages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_ques`
(
);


