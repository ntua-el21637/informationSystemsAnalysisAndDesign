COPY FROM '/home/ubuntu/data-for-ignite/inventory_1_4.dat' INTO INVENTORY (inv_date_sk, inv_item_sk, inv_warehouse_sk, inv_quantity_on_hand) FORMAT CSV DELIMITER '|';
COPY FROM '/home/ubuntu/data-for-ignite/inventory_2_4.dat' INTO INVENTORY (inv_date_sk, inv_item_sk, inv_warehouse_sk, inv_quantity_on_hand) FORMAT CSV DELIMITER '|';
COPY FROM '/home/ubuntu/data-for-ignite/inventory_3_4.dat' INTO INVENTORY (inv_date_sk, inv_item_sk, inv_warehouse_sk, inv_quantity_on_hand) FORMAT CSV DELIMITER '|';
COPY FROM '/home/ubuntu/data-for-ignite/inventory_4_4.dat' INTO INVENTORY (inv_date_sk, inv_item_sk, inv_warehouse_sk, inv_quantity_on_hand) FORMAT CSV DELIMITER '|';
