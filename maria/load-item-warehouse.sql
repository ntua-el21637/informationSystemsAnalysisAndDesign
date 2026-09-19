/* * Data Loading Script for MariaDB
 * Absolute Path: /home/ubuntu/data/
 */

SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;

LOAD DATA LOCAL INFILE '/home/ubuntu/data/item_1_4.dat'
INTO TABLE item
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';


LOAD DATA LOCAL INFILE '/home/ubuntu/data/warehouse_1_4.dat'
INTO TABLE warehouse
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';


SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;

