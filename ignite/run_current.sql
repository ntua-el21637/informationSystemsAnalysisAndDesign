COPY FROM '/home/ubuntu/data-for-ignite/inventory_parts/inv_part_ax' INTO INVENTORY (inv_date_sk, inv_item_sk, inv_warehouse_sk, inv_quantity_on_hand) FORMAT CSV DELIMITER '|';
