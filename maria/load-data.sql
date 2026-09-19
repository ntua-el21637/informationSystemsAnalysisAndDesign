/* * Data Loading Script for MariaDB
 * Absolute Path: /home/ubuntu/data/
 * Batches: 4
 */

SET FOREIGN_KEY_CHECKS = 0;
SET UNIQUE_CHECKS = 0;

-- 1. call_center
LOAD DATA LOCAL INFILE '/home/ubuntu/data/call_center_1_4.dat'
INTO TABLE call_center
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 2. catalog_page
LOAD DATA LOCAL INFILE '/home/ubuntu/data/catalog_page_1_4.dat'
INTO TABLE catalog_page
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 3. catalog_returns (Multi-batch)
LOAD DATA LOCAL INFILE '/home/ubuntu/data/catalog_returns_1_4.dat'
INTO TABLE catalog_returns
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/catalog_returns_2_4.dat'
INTO TABLE catalog_returns
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/catalog_returns_3_4.dat'
INTO TABLE catalog_returns
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/catalog_returns_4_4.dat'
INTO TABLE catalog_returns
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 4. customer
LOAD DATA LOCAL INFILE '/home/ubuntu/data/customer_1_4.dat'
INTO TABLE customer
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 5. customer_address
LOAD DATA LOCAL INFILE '/home/ubuntu/data/customer_address_1_4.dat'
INTO TABLE customer_address
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 6. customer_demographics (Multi-batch)
LOAD DATA LOCAL INFILE '/home/ubuntu/data/customer_demographics_1_4.dat'
INTO TABLE customer_demographics
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/customer_demographics_2_4.dat'
INTO TABLE customer_demographics
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/customer_demographics_3_4.dat'
INTO TABLE customer_demographics
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/ubuntu/data/customer_demographics_4_4.dat'
INTO TABLE customer_demographics
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 7. date_dim
LOAD DATA LOCAL INFILE '/home/ubuntu/data/date_dim_1_4.dat'
INTO TABLE date_dim
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 8. dbgen_version
LOAD DATA LOCAL INFILE '/home/ubuntu/data/dbgen_version_1_4.dat'
INTO TABLE dbgen_version
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 9. household_demographics
LOAD DATA LOCAL INFILE '/home/ubuntu/data/household_demographics_1_4.dat'
INTO TABLE household_demographics
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 10. income_band
LOAD DATA LOCAL INFILE '/home/ubuntu/data/income_band_1_4.dat'
INTO TABLE income_band
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 11. promotion
LOAD DATA LOCAL INFILE '/home/ubuntu/data/promotion_1_4.dat'
INTO TABLE promotion
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 12. reason
LOAD DATA LOCAL INFILE '/home/ubuntu/data/reason_1_4.dat'
INTO TABLE reason
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 13. ship_mode
LOAD DATA LOCAL INFILE '/home/ubuntu/data/ship_mode_1_4.dat'
INTO TABLE ship_mode
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 14. store
LOAD DATA LOCAL INFILE '/home/ubuntu/data/store_1_4.dat'
INTO TABLE store
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 15. time_dim
LOAD DATA LOCAL INFILE '/home/ubuntu/data/time_dim_1_4.dat'
INTO TABLE time_dim
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 16. web_page
LOAD DATA LOCAL INFILE '/home/ubuntu/data/web_page_1_4.dat'
INTO TABLE web_page
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 17. web_returns
LOAD DATA LOCAL INFILE '/home/ubuntu/data/web_returns_1_4.dat'
INTO TABLE web_returns
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

-- 18. web_site
LOAD DATA LOCAL INFILE '/home/ubuntu/data/web_site_1_4.dat'
INTO TABLE web_site
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n';

SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;
