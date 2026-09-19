create table warehouse
(
    w_warehouse_sk            INTEGER               not null,
    w_warehouse_id            char(16)              not null,
    w_warehouse_name          varchar(20)                   ,
    w_warehouse_sq_ft          INTEGER                       ,
    w_street_number           char(10)                      ,
    w_street_name             varchar(60)                   ,
    w_street_type             char(15)                      ,
    w_suite_number            char(10)                      ,
    w_city                    varchar(60)                   ,
    w_county                  varchar(30)                   ,
    w_state                   char(2)                       ,
    w_zip                     char(10)                      ,
    w_country                 varchar(20)                   ,
    w_gmt_offset              decimal(5,2)                  ,
    primary key (w_warehouse_sk)
);

create table item
(
    i_item_sk                 INTEGER               not null,
    i_item_id                 char(16)              not null,
    i_rec_start_date          date                          ,
    i_rec_end_date            date                          ,
    i_item_desc               varchar(200)                  ,
    i_current_price           decimal(7,2)                  ,
    i_wholesale_cost          decimal(7,2)                  ,
    i_brand_id                INTEGER                       ,
    i_brand                   char(50)                      ,
    i_class_id                INTEGER                       ,
    i_class                   char(50)                      ,
    i_category_id             INTEGER                       ,
    i_category                char(50)                      ,
    i_manufact_id             INTEGER                       ,
    i_manufact                char(50)                      ,
    i_size                    char(20)                      ,
    i_formulation             char(20)                      ,
    i_color                   char(20)                      ,
    i_units                   char(10)                      ,
    i_container               char(10)                      ,
    i_manager_id              INTEGER                       ,
    i_product_name            char(50)                      ,
    primary key (i_item_sk)
);

create table inventory
(
    inv_date_sk                INTEGER               not null,
    inv_item_sk                INTEGER               not null,
    inv_warehouse_sk           INTEGER               not null,
    inv_quantity_on_hand       INTEGER                       ,
    primary key (inv_date_sk, inv_item_sk, inv_warehouse_sk)
);

CREATE TABLE "WEB_SALES"
(
    ws_sold_date_sk       INT,
    ws_sold_time_sk       INT,
    ws_ship_date_sk       INT,
    ws_item_sk            INT,
    ws_bill_customer_sk   INT,
    ws_bill_cdemo_sk      INT,
    ws_bill_hdemo_sk      INT,
    ws_bill_addr_sk       INT,
    ws_ship_customer_sk   INT,
    ws_ship_cdemo_sk      INT,
    ws_ship_hdemo_sk      INT,
    ws_ship_addr_sk       INT,
    ws_web_page_sk        INT,
    ws_web_site_sk        INT,
    ws_ship_mode_sk       INT,
    ws_warehouse_sk       INT,
    ws_promo_sk           INT,
    ws_order_number       BIGINT,
    ws_quantity           INT,
    ws_wholesale_cost     DECIMAL(7,2),
    ws_list_price         DECIMAL(7,2),
    ws_sales_price        DECIMAL(7,2),
    ws_ext_discount_amt   DECIMAL(7,2),
    ws_ext_sales_price    DECIMAL(7,2),
    ws_ext_wholesale_cost DECIMAL(7,2),
    ws_ext_list_price     DECIMAL(7,2),
    ws_ext_tax            DECIMAL(7,2),
    ws_coupon_amt         DECIMAL(7,2),
    ws_ext_ship_cost      DECIMAL(7,2),
    ws_net_paid           DECIMAL(7,2),
    ws_net_paid_inc_tax   DECIMAL(7,2),
    ws_net_profit         DECIMAL(7,2),
    PRIMARY KEY (ws_item_sk, ws_order_number)
) WITH "template=partitioned";
