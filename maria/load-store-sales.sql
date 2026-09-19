/* * Data Loading Script for MariaDB
 * Absolute Path: /home/ubuntu/data/
 */

SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;

-- Must load data in 4 bathches
LOAD DATA LOCAL INFILE '/home/ubuntu/data/store_sales_1_4.dat'
INTO TABLE store_sales
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE '/home/ubuntu/data/store_sales_2_4.dat'
INTO TABLE store_sales
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE '/home/ubuntu/data/store_sales_3_4.dat'
INTO TABLE store_sales
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/store_sales_4_4.dat'
INTO TABLE store_sales
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;

