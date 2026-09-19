#!/bin/bash

echo "-----------------------------------------"
echo "Load Started: $(date)"
echo "-----------------------------------------"

# load store_sales
echo "Load store_sales..."
~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t store_sales \
  -url /home/ubuntu/data-for-cassandra/store_sales_1_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=ss_sold_date_sk,1=ss_sold_time_sk,2=ss_item_sk,3=ss_customer_sk,4=ss_cdemo_sk,5=ss_hdemo_sk,6=ss_addr_sk,7=ss_store_sk,8=ss_promo_sk,9=ss_ticket_number,10=ss_quantity,11=ss_wholesale_cost,12=ss_list_price,13=ss_sales_price,14=ss_ext_discount_amt,15=ss_ext_sales_price,16=ss_ext_wholesale_cost,17=ss_ext_list_price,18=ss_ext_tax,19=ss_coupon_amt,20=ss_net_paid,21=ss_net_paid_inc_tax,22=ss_net_profit"
echo "store_sales file 1 of 3 loaded!"

~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t store_sales \
  -url /home/ubuntu/data-for-cassandra/store_sales_2_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=ss_sold_date_sk,1=ss_sold_time_sk,2=ss_item_sk,3=ss_customer_sk,4=ss_cdemo_sk,5=ss_hdemo_sk,6=ss_addr_sk,7=ss_store_sk,8=ss_promo_sk,9=ss_ticket_number,10=ss_quantity,11=ss_wholesale_cost,12=ss_list_price,13=ss_sales_price,14=ss_ext_discount_amt,15=ss_ext_sales_price,16=ss_ext_wholesale_cost,17=ss_ext_list_price,18=ss_ext_tax,19=ss_coupon_amt,20=ss_net_paid,21=ss_net_paid_inc_tax,22=ss_net_profit"
echo "store_sales file 2 of 3 loaded!"

~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t store_sales \
  -url /home/ubuntu/data-for-cassandra/store_sales_3_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=ss_sold_date_sk,1=ss_sold_time_sk,2=ss_item_sk,3=ss_customer_sk,4=ss_cdemo_sk,5=ss_hdemo_sk,6=ss_addr_sk,7=ss_store_sk,8=ss_promo_sk,9=ss_ticket_number,10=ss_quantity,11=ss_wholesale_cost,12=ss_list_price,13=ss_sales_price,14=ss_ext_discount_amt,15=ss_ext_sales_price,16=ss_ext_wholesale_cost,17=ss_ext_list_price,18=ss_ext_tax,19=ss_coupon_amt,20=ss_net_paid,21=ss_net_paid_inc_tax,22=ss_net_profit"
echo "store_sales file 3 of 3 loaded!"
echo "----------------------------------------"
echo "store_sales loaded!"

# load store_returns
echo "Load store_returns..."
~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t store_returns \
  -url /home/ubuntu/data-for-cassandra/store_returns_1_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=sr_returned_date_sk,\
1=sr_return_time_sk,\
2=sr_item_sk,\
3=sr_customer_sk,\
4=sr_cdemo_sk,\
5=sr_hdemo_sk,\
6=sr_addr_sk,\
7=sr_store_sk,\
8=sr_reason_sk,\
9=sr_ticket_number,\
10=sr_return_quantity,\
11=sr_return_amt,\
12=sr_return_tax,\
13=sr_return_amt_inc_tax,\
14=sr_fee,\
15=sr_return_ship_cost,\
16=sr_refunded_cash,\
17=sr_reversed_charge,\
18=sr_store_credit,\
19=sr_net_loss"
echo "store_returns file 1 of 3 loaded!"

~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t store_returns \
  -url /home/ubuntu/data-for-cassandra/store_returns_2_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=sr_returned_date_sk,\
1=sr_return_time_sk,\
2=sr_item_sk,\
3=sr_customer_sk,\
4=sr_cdemo_sk,\
5=sr_hdemo_sk,\
6=sr_addr_sk,\
7=sr_store_sk,\
8=sr_reason_sk,\
9=sr_ticket_number,\
10=sr_return_quantity,\
11=sr_return_amt,\
12=sr_return_tax,\
13=sr_return_amt_inc_tax,\
14=sr_fee,\
15=sr_return_ship_cost,\
16=sr_refunded_cash,\
17=sr_reversed_charge,\
18=sr_store_credit,\
19=sr_net_loss"
echo "store_returns file 2 of 3 loaded!"

~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t store_returns \
  -url /home/ubuntu/data-for-cassandra/store_returns_3_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=sr_returned_date_sk,\
1=sr_return_time_sk,\
2=sr_item_sk,\
3=sr_customer_sk,\
4=sr_cdemo_sk,\
5=sr_hdemo_sk,\
6=sr_addr_sk,\
7=sr_store_sk,\
8=sr_reason_sk,\
9=sr_ticket_number,\
10=sr_return_quantity,\
11=sr_return_amt,\
12=sr_return_tax,\
13=sr_return_amt_inc_tax,\
14=sr_fee,\
15=sr_return_ship_cost,\
16=sr_refunded_cash,\
17=sr_reversed_charge,\
18=sr_store_credit,\
19=sr_net_loss"
echo "store_returns file 3 of 3 loaded!"
echo "----------------------------------------"
echo "store_returns loaded!"

#load catalog_sales
echo "Load catalog_sales..."
~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t catalog_sales \
  -url /home/ubuntu/data-for-cassandra/catalog_sales_1_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=cs_sold_date_sk,\
1=cs_sold_time_sk,\
2=cs_ship_date_sk,\
3=cs_bill_customer_sk,\
4=cs_bill_cdemo_sk,\
5=cs_bill_hdemo_sk,\
6=cs_bill_addr_sk,\
7=cs_ship_customer_sk,\
8=cs_ship_cdemo_sk,\
9=cs_ship_hdemo_sk,\
10=cs_ship_addr_sk,\
11=cs_call_center_sk,\
12=cs_catalog_page_sk,\
13=cs_ship_mode_sk,\
14=cs_warehouse_sk,\
15=cs_item_sk,\
16=cs_promo_sk,\
17=cs_order_number,\
18=cs_quantity,\
19=cs_wholesale_cost,\
20=cs_list_price,\
21=cs_sales_price,\
22=cs_ext_discount_amt,\
23=cs_ext_sales_price,\
24=cs_ext_wholesale_cost,\
25=cs_ext_list_price,\
26=cs_ext_tax,\
27=cs_coupon_amt,\
28=cs_ext_ship_cost,\
29=cs_net_paid,\
30=cs_net_paid_inc_tax,\
31=cs_net_paid_inc_ship,\
32=cs_net_paid_inc_ship_tax,\
33=cs_net_profit"
echo "catalog_sales file 1 of 3 loaded!"

~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t catalog_sales \
  -url /home/ubuntu/data-for-cassandra/catalog_sales_2_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=cs_sold_date_sk,\
1=cs_sold_time_sk,\
2=cs_ship_date_sk,\
3=cs_bill_customer_sk,\
4=cs_bill_cdemo_sk,\
5=cs_bill_hdemo_sk,\
6=cs_bill_addr_sk,\
7=cs_ship_customer_sk,\
8=cs_ship_cdemo_sk,\
9=cs_ship_hdemo_sk,\
10=cs_ship_addr_sk,\
11=cs_call_center_sk,\
12=cs_catalog_page_sk,\
13=cs_ship_mode_sk,\
14=cs_warehouse_sk,\
15=cs_item_sk,\
16=cs_promo_sk,\
17=cs_order_number,\
18=cs_quantity,\
19=cs_wholesale_cost,\
20=cs_list_price,\
21=cs_sales_price,\
22=cs_ext_discount_amt,\
23=cs_ext_sales_price,\
24=cs_ext_wholesale_cost,\
25=cs_ext_list_price,\
26=cs_ext_tax,\
27=cs_coupon_amt,\
28=cs_ext_ship_cost,\
29=cs_net_paid,\
30=cs_net_paid_inc_tax,\
31=cs_net_paid_inc_ship,\
32=cs_net_paid_inc_ship_tax,\
33=cs_net_profit"
echo "catalog_sales file 2 of 3 loaded!"

~/dsbulk-1.11.0/bin/dsbulk load \
  -k db_cassandra \
  -t catalog_sales \
  -url /home/ubuntu/data-for-cassandra/catalog_sales_3_3.dat \
  -delim '|' \
  -header false \
  -h '["[2001:648:2ffe:501:cc00:12ff:feb2:6a87]:9042"]' \
  --executor.maxPerSecond 3000 \
  -m "0=cs_sold_date_sk,\
1=cs_sold_time_sk,\
2=cs_ship_date_sk,\
3=cs_bill_customer_sk,\
4=cs_bill_cdemo_sk,\
5=cs_bill_hdemo_sk,\
6=cs_bill_addr_sk,\
7=cs_ship_customer_sk,\
8=cs_ship_cdemo_sk,\
9=cs_ship_hdemo_sk,\
10=cs_ship_addr_sk,\
11=cs_call_center_sk,\
12=cs_catalog_page_sk,\
13=cs_ship_mode_sk,\
14=cs_warehouse_sk,\
15=cs_item_sk,\
16=cs_promo_sk,\
17=cs_order_number,\
18=cs_quantity,\
19=cs_wholesale_cost,\
20=cs_list_price,\
21=cs_sales_price,\
22=cs_ext_discount_amt,\
23=cs_ext_sales_price,\
24=cs_ext_wholesale_cost,\
25=cs_ext_list_price,\
26=cs_ext_tax,\
27=cs_coupon_amt,\
28=cs_ext_ship_cost,\
29=cs_net_paid,\
30=cs_net_paid_inc_tax,\
31=cs_net_paid_inc_ship,\
32=cs_net_paid_inc_ship_tax,\
33=cs_net_profit"
echo "catalog_sales file 3 of 3 loaded!"
echo "----------------------------------------"
echo "catalog_sales loaded!"

echo "------------------------------------"
echo "Load finished!"
echo "------------------------------------"

