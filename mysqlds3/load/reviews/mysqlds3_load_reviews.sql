use DS3;
SET UNIQUE_CHECKS=0;
SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE REVIEWS DISABLE KEYS;

LOAD DATA LOCAL INFILE "../../../data_files/reviews/reviews.csv" INTO TABLE REVIEWS FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

ALTER TABLE REVIEWS ENABLE KEYS;
SET UNIQUE_CHECKS=1;
SET FOREIGN_KEY_CHECKS=1;