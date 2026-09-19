--
-- Legal Notice
--
-- This document and associated source code (the "Work") is a part of a
-- benchmark specification maintained by the TPC.
--
-- The TPC reserves all right, title, and interest to the Work as provided
-- under U.S. and international laws, including without limitation all patent
-- and trademark rights therein.
--
-- No Warranty
--
-- 1.1 TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE INFORMATION
--     CONTAINED HEREIN IS PROVIDED "AS IS" AND WITH ALL FAULTS, AND THE
--     AUTHORS AND DEVELOPERS OF THE WORK HEREBY DISCLAIM ALL OTHER
--     WARRANTIES AND CONDITIONS, EITHER EXPRESS, IMPLIED OR STATUTORY,
--     INCLUDING, BUT NOT LIMITED TO, ANY (IF ANY) IMPLIED WARRANTIES,
--     DUTIES OR CONDITIONS OF MERCHANTABILITY, OF FITNESS FOR A PARTICULAR
--     PURPOSE, OF ACCURACY OR COMPLETENESS OF RESPONSES, OF RESULTS, OF
--     WORKMANLIKE EFFORT, OF LACK OF VIRUSES, AND OF LACK OF NEGLIGENCE.
--     ALSO, THERE IS NO WARRANTY OR CONDITION OF TITLE, QUIET ENJOYMENT,
--     QUIET POSSESSION, CORRESPONDENCE TO DESCRIPTION OR NON-INFRINGEMENT
--     WITH REGARD TO THE WORK.
-- 1.2 IN NO EVENT WILL ANY AUTHOR OR DEVELOPER OF THE WORK BE LIABLE TO
--     ANY OTHER PARTY FOR ANY DAMAGES, INCLUDING BUT NOT LIMITED TO THE
--     COST OF PROCURING SUBSTITUTE GOODS OR SERVICES, LOST PROFITS, LOSS
--     OF USE, LOSS OF DATA, OR ANY INCIDENTAL, CONSEQUENTIAL, DIRECT,
--     INDIRECT, OR SPECIAL DAMAGES WHETHER UNDER CONTRACT, TORT, WARRANTY,
--     OR OTHERWISE, ARISING IN ANY WAY OUT OF THIS OR ANY OTHER AGREEMENT
--     RELATING TO THE WORK, WHETHER OR NOT SUCH AUTHOR OR DEVELOPER HAD
--     ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.
--
-- Contributors:
-- Gradient Systems
--
create table dbgen_version
(
    dv_version                varchar(16)                   ,
    dv_create_date            date                          ,
    dv_create_time            time                          ,
    dv_cmdline_args           varchar(200)                  ,
    PRIMARY KEY (dv_version, dv_create_date, dv_create_time)
);

create table customer_address
(
    ca_address_sk             INTEGER               not null,
    ca_address_id             char(16)              not null,
    ca_street_number          char(10)                      ,
    ca_street_name            varchar(60)                   ,
    ca_street_type            char(15)                      ,
    ca_suite_number           char(10)                      ,
    ca_city                   varchar(60)                   ,
    ca_county                 varchar(30)                   ,
    ca_state                  char(2)                       ,
    ca_zip                    char(10)                      ,
    ca_country                varchar(20)                   ,
    ca_gmt_offset             decimal(5,2)                  ,
    ca_location_type          char(20)                      ,
    primary key (ca_address_sk)
);

create table customer_demographics
(
    cd_demo_sk                INTEGER               not null,
    cd_gender                 char(1)                       ,
    cd_marital_status         char(1)                       ,
    cd_education_status       char(20)                      ,
    cd_purchase_estimate      INTEGER                       ,
    cd_credit_rating          char(10)                      ,
    cd_dep_count              INTEGER                       ,
    cd_dep_employed_count     INTEGER                       ,
    cd_dep_college_count      INTEGER                       ,
    primary key (cd_demo_sk)
);

create table date_dim
(
    d_date_sk                 INTEGER               not null,
    d_date_id                 char(16)              not null,
    d_date                    date                          ,
    d_month_seq               INTEGER                       ,
    d_week_seq                INTEGER                       ,
    d_quarter_seq             INTEGER                       ,
    d_year                    INTEGER                       ,
    d_dow                     INTEGER                       ,
    d_moy                     INTEGER                       ,
    d_dom                     INTEGER                       ,
    d_qoy                     INTEGER                       ,
    d_fy_year                 INTEGER                       ,
    d_fy_quarter_seq          INTEGER                       ,
    d_fy_week_seq             INTEGER                       ,
    d_day_name                char(9)                       ,
    d_quarter_name            char(6)                       ,
    d_holiday                 char(1)                       ,
    d_weekend                 char(1)                       ,
    d_following_holiday       char(1)                       ,
    d_first_dom               INTEGER                       ,
    d_last_dom                INTEGER                       ,
    d_same_day_ly             INTEGER                       ,
    d_same_day_lq             INTEGER                       ,
    d_current_day             char(1)                       ,
    d_current_week            char(1)                       ,
    d_current_month           char(1)                       ,
    d_current_quarter         char(1)                       ,
    d_current_year            char(1)                       ,
    primary key (d_date_sk)
);

create table warehouse
(
    w_warehouse_sk            INTEGER               not null,
    w_warehouse_id            char(16)              not null,
    w_warehouse_name          varchar(20)                   ,
    w_warehouse_sq_ft         INTEGER                       ,
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

create table ship_mode
(
    sm_ship_mode_sk           INTEGER               not null,
    sm_ship_mode_id           char(16)              not null,
    sm_type                   char(30)                      ,
    sm_code                   char(10)                      ,
    sm_carrier                char(20)                      ,
    sm_contract               char(20)                      ,
    primary key (sm_ship_mode_sk)
);

create table time_dim
(
    t_time_sk                 INTEGER               not null,
    t_time_id                 char(16)              not null,
    t_time                    INTEGER                       ,
    t_hour                    INTEGER                       ,
    t_minute                  INTEGER                       ,
    t_second                  INTEGER                       ,
    t_am_pm                   char(2)                       ,
    t_shift                   char(20)                      ,
    t_sub_shift               char(20)                      ,
    t_meal_time               char(20)                      ,
    primary key (t_time_sk)
);

create table reason
(
    r_reason_sk               INTEGER               not null,
    r_reason_id               char(16)              not null,
    r_reason_desc             char(100)                     ,
    primary key (r_reason_sk)
);

create table income_band
(
    ib_income_band_sk         INTEGER               not null,
    ib_lower_bound            INTEGER                       ,
    ib_upper_bound            INTEGER                       ,
    primary key (ib_income_band_sk)
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

create table store
(
    s_store_sk                INTEGER               not null,
    s_store_id                char(16)              not null,
    s_rec_start_date          date                          ,
    s_rec_end_date            date                          ,
    s_closed_date_sk          INTEGER                       ,
    s_store_name              varchar(50)                   ,
    s_number_employees        INTEGER                       ,
    s_floor_space             INTEGER                       ,
    s_hours                   char(20)                      ,
    s_manager                 varchar(40)                   ,
    s_market_id               INTEGER                       ,
    s_geography_class         varchar(100)                  ,
    s_market_desc             varchar(100)                  ,
    s_market_manager          varchar(40)                   ,
    s_division_id             INTEGER                       ,
    s_division_name           varchar(50)                   ,
    s_company_id              INTEGER                       ,
    s_company_name            varchar(50)                   ,
    s_street_number           varchar(10)                   ,
    s_street_name             varchar(60)                   ,
    s_street_type             char(15)                      ,
    s_suite_number            char(10)                      ,
    s_city                    varchar(60)                   ,
    s_county                  varchar(30)                   ,
    s_state                   char(2)                       ,
    s_zip                     char(10)                      ,
    s_country                 varchar(20)                   ,
    s_gmt_offset              decimal(5,2)                  ,
    s_tax_precentage          decimal(5,2)                  ,
    primary key (s_store_sk)
);

create table call_center
(
    cc_call_center_sk         INTEGER               not null,
    cc_call_center_id         char(16)              not null,
    cc_rec_start_date         date                          ,
    cc_rec_end_date           date                          ,
    cc_closed_date_sk         INTEGER                       ,
    cc_open_date_sk           INTEGER                       ,
    cc_name                   varchar(50)                   ,
    cc_class                  varchar(50)                   ,
    cc_employees              INTEGER                       ,
    cc_sq_ft                  INTEGER                       ,
    cc_hours                  char(20)                      ,
    cc_manager                varchar(40)                   ,
    cc_mkt_id                 INTEGER                       ,
    cc_mkt_class              char(50)                      ,
    cc_mkt_desc               varchar(100)                  ,
    cc_market_manager         varchar(40)                   ,
    cc_division               INTEGER                       ,
    cc_division_name          varchar(50)                   ,
    cc_company                INTEGER                       ,
    cc_company_name           char(50)                      ,
    cc_street_number          char(10)                      ,
    cc_street_name            varchar(60)                   ,
    cc_street_type            char(15)                      ,
    cc_suite_number           char(10)                      ,
    cc_city                   varchar(60)                   ,
    cc_county                 varchar(30)                   ,
    cc_state                  char(2)                       ,
    cc_zip                    char(10)                      ,
    cc_country                varchar(20)                   ,
    cc_gmt_offset             decimal(5,2)                  ,
    cc_tax_percentage         decimal(5,2)                  ,
    primary key (cc_call_center_sk)
);

create table customer
(
    c_customer_sk             INTEGER               not null,
    c_customer_id             char(16)              not null,
    c_current_cdemo_sk        INTEGER                       ,
    c_current_hdemo_sk        INTEGER                       ,
    c_current_addr_sk         INTEGER                       ,
    c_first_shipto_date_sk    INTEGER                       ,
    c_first_sales_date_sk     INTEGER                       ,
    c_salutation              char(10)                      ,
    c_first_name              char(20)                      ,
    c_last_name               char(30)                      ,
    c_preferred_cust_flag     char(1)                       ,
    c_birth_day               INTEGER                       ,
    c_birth_month             INTEGER                       ,
    c_birth_year              INTEGER                       ,
    c_birth_country           varchar(20)                   ,
    c_login                   char(13)                      ,
    c_email_address           char(50)                      ,
    c_last_review_date_sk     INTEGER                       ,
    primary key (c_customer_sk)
);

create table web_site
(
    web_site_sk               INTEGER               not null,
    web_site_id               char(16)              not null,
    web_rec_start_date        date                          ,
    web_rec_end_date          date                          ,
    web_name                  varchar(50)                   ,
    web_open_date_sk          INTEGER                       ,
    web_close_date_sk         INTEGER                       ,
    web_class                 varchar(50)                   ,
    web_manager               varchar(40)                   ,
    web_mkt_id                INTEGER                       ,
    web_mkt_class             varchar(50)                   ,
    web_mkt_desc              varchar(100)                  ,
    web_market_manager        varchar(40)                   ,
    web_company_id            INTEGER                       ,
    web_company_name          char(50)                      ,
    web_street_number         char(10)                      ,
    web_street_name           varchar(60)                   ,
    web_street_type           char(15)                      ,
    web_suite_number          char(10)                      ,
    web_city                  varchar(60)                   ,
    web_county                varchar(30)                   ,
    web_state                 char(2)                       ,
    web_zip                   char(10)                      ,
    web_country               varchar(20)                   ,
    web_gmt_offset            decimal(5,2)                  ,
    web_tax_percentage        decimal(5,2)                  ,
    primary key (web_site_sk)
);

create table store_returns
(
    sr_returned_date_sk       INTEGER                       ,
    sr_return_time_sk         INTEGER                       ,
    sr_item_sk                INTEGER               not null,
    sr_customer_sk            INTEGER                       ,
    sr_cdemo_sk               INTEGER                       ,
    sr_hdemo_sk               INTEGER                       ,
    sr_addr_sk                INTEGER                       ,
    sr_store_sk               INTEGER                       ,
    sr_reason_sk              INTEGER                       ,
    sr_ticket_number          INTEGER               not null,
    sr_return_quantity        INTEGER                       ,
    sr_return_amt             decimal(7,2)                  ,
    sr_return_tax             decimal(7,2)                  ,
    sr_return_amt_inc_tax     decimal(7,2)                  ,
    sr_fee                    decimal(7,2)                  ,
    sr_return_ship_cost       decimal(7,2)                  ,
    sr_refunded_cash          decimal(7,2)                  ,
    sr_reversed_charge        decimal(7,2)                  ,
    sr_store_credit           decimal(7,2)                  ,
    sr_net_loss               decimal(7,2)                  ,
    primary key (sr_item_sk, sr_ticket_number)
);

create table household_demographics
(
    hd_demo_sk                INTEGER               not null,
    hd_income_band_sk         INTEGER                       ,
    hd_buy_potential          char(15)                      ,
    hd_dep_count              INTEGER                       ,
    hd_vehicle_count          INTEGER                       ,
    primary key (hd_demo_sk)
);

create table web_page
(
    wp_web_page_sk            INTEGER               not null,
    wp_web_page_id            char(16)              not null,
    wp_rec_start_date         date                          ,
    wp_rec_end_date           date                          ,
    wp_creation_date_sk       INTEGER                       ,
    wp_access_date_sk         INTEGER                       ,
    wp_autogen_flag           char(1)                       ,
    wp_customer_sk            INTEGER                       ,
    wp_url                    varchar(100)                  ,
    wp_type                   char(50)                      ,
    wp_char_count             INTEGER                       ,
    wp_link_count             INTEGER                       ,
    wp_image_count            INTEGER                       ,
    wp_max_ad_count           INTEGER                       ,
    primary key (wp_web_page_sk)
);

create table promotion
(
    p_promo_sk                INTEGER               not null,
    p_promo_id                char(16)              not null,
    p_start_date_sk           INTEGER                       ,
    p_end_date_sk             INTEGER                       ,
    p_item_sk                 INTEGER                       ,
    p_cost                    decimal(15,2)                 ,
    p_response_target         INTEGER                       ,
    p_promo_name              char(50)                      ,
    p_channel_dmail           char(1)                       ,
    p_channel_email           char(1)                       ,
    p_channel_catalog         char(1)                       ,
    p_channel_tv              char(1)                       ,
    p_channel_radio           char(1)                       ,
    p_channel_press           char(1)                       ,
    p_channel_event           char(1)                       ,
    p_channel_demo            char(1)                       ,
    p_channel_details         varchar(100)                  ,
    p_purpose                 char(15)                      ,
    p_discount_active         char(1)                       ,
    primary key (p_promo_sk)
);

create table catalog_page
(
    cp_catalog_page_sk        INTEGER               not null,
    cp_catalog_page_id        char(16)              not null,
    cp_start_date_sk          INTEGER                       ,
    cp_end_date_sk            INTEGER                       ,
    cp_department             varchar(50)                   ,
    cp_catalog_number         INTEGER                       ,
    cp_catalog_page_number    INTEGER                       ,
    cp_description            varchar(100)                  ,
    cp_type                   varchar(100)                  ,
    primary key (cp_catalog_page_sk)
);

create table inventory
(
    inv_date_sk               INTEGER               not null,
    inv_item_sk               INTEGER               not null,
    inv_warehouse_sk          INTEGER               not null,
    inv_quantity_on_hand      INTEGER                       ,
    primary key (inv_date_sk, inv_item_sk, inv_warehouse_sk)
);

create table catalog_returns
(
    cr_returned_date_sk       INTEGER                       ,
    cr_returned_time_sk       INTEGER                       ,
    cr_item_sk                INTEGER               not null,
    cr_refunded_customer_sk   INTEGER                       ,
    cr_refunded_cdemo_sk      INTEGER                       ,
    cr_refunded_hdemo_sk      INTEGER                       ,
    cr_refunded_addr_sk       INTEGER                       ,
    cr_returning_customer_sk  INTEGER                       ,
    cr_returning_cdemo_sk     INTEGER                       ,
    cr_returning_hdemo_sk     INTEGER                       ,
    cr_returning_addr_sk      INTEGER                       ,
    cr_call_center_sk         INTEGER                       ,
    cr_catalog_page_sk        INTEGER                       ,
    cr_ship_mode_sk           INTEGER                       ,
    cr_warehouse_sk           INTEGER                       ,
    cr_reason_sk              INTEGER                       ,
    cr_order_number           INTEGER               not null,
    cr_return_quantity        INTEGER                       ,
    cr_return_amount          decimal(7,2)                  ,
    cr_return_tax             decimal(7,2)                  ,
    cr_return_amt_inc_tax     decimal(7,2)                  ,
    cr_fee                    decimal(7,2)                  ,
    cr_return_ship_cost       decimal(7,2)                  ,
    cr_refunded_cash          decimal(7,2)                  ,
    cr_reversed_charge        decimal(7,2)                  ,
    cr_store_credit           decimal(7,2)                  ,
    cr_net_loss               decimal(7,2)                  ,
    primary key (cr_item_sk, cr_order_number)
);

create table web_returns
(
    wr_returned_date_sk       INTEGER                       ,
    wr_returned_time_sk       INTEGER                       ,
    wr_item_sk                INTEGER               not null,
    wr_refunded_customer_sk   INTEGER                       ,
    wr_refunded_cdemo_sk      INTEGER                       ,
    wr_refunded_hdemo_sk      INTEGER                       ,
    wr_refunded_addr_sk       INTEGER                       ,
    wr_returning_customer_sk  INTEGER                       ,
    wr_returning_cdemo_sk     INTEGER                       ,
    wr_returning_hdemo_sk     INTEGER                       ,
    wr_returning_addr_sk      INTEGER                       ,
    wr_web_page_sk            INTEGER                       ,
    wr_reason_sk              INTEGER                       ,
    wr_order_number           INTEGER               not null,
    wr_return_quantity        INTEGER                       ,
    wr_return_amt             decimal(7,2)                  ,
    wr_return_tax             decimal(7,2)                  ,
    wr_return_amt_inc_tax     decimal(7,2)                  ,
    wr_fee                    decimal(7,2)                  ,
    wr_return_ship_cost       decimal(7,2)                  ,
    wr_refunded_cash          decimal(7,2)                  ,
    wr_reversed_charge        decimal(7,2)                  ,
    wr_account_credit         decimal(7,2)                  ,
    wr_net_loss               decimal(7,2)                  ,
    primary key (wr_item_sk, wr_order_number)
);

create table web_sales
(
    ws_sold_date_sk           INTEGER                       ,
    ws_sold_time_sk           INTEGER                       ,
    ws_ship_date_sk           INTEGER                       ,
    ws_item_sk                INTEGER               not null,
    ws_bill_customer_sk       INTEGER                       ,
    ws_bill_cdemo_sk          INTEGER                       ,
    ws_bill_hdemo_sk          INTEGER                       ,
    ws_bill_addr_sk           INTEGER                       ,
    ws_ship_customer_sk       INTEGER                       ,
    ws_ship_cdemo_sk          INTEGER                       ,
    ws_ship_hdemo_sk          INTEGER                       ,
    ws_ship_addr_sk           INTEGER                       ,
    ws_web_page_sk            INTEGER                       ,
    ws_web_site_sk            INTEGER                       ,
    ws_ship_mode_sk           INTEGER                       ,
    ws_warehouse_sk           INTEGER                       ,
    ws_promo_sk               INTEGER                       ,
    ws_order_number           INTEGER               not null,
    ws_quantity               INTEGER                       ,
    ws_wholesale_cost         decimal(7,2)                  ,
    ws_list_price             decimal(7,2)                  ,
    ws_sales_price            decimal(7,2)                  ,
    ws_ext_discount_amt       decimal(7,2)                  ,
    ws_ext_sales_price        decimal(7,2)                  ,
    ws_ext_wholesale_cost     decimal(7,2)                  ,
    ws_ext_list_price         decimal(7,2)                  ,
    ws_ext_tax                decimal(7,2)                  ,
    ws_coupon_amt             decimal(7,2)                  ,
    ws_ext_ship_cost          decimal(7,2)                  ,
    ws_net_paid               decimal(7,2)                  ,
    ws_net_paid_inc_tax       decimal(7,2)                  ,
    ws_net_paid_inc_ship      decimal(7,2)                  ,
    ws_net_paid_inc_ship_tax  decimal(7,2)                  ,
    ws_net_profit             decimal(7,2)                  ,
    primary key (ws_item_sk, ws_order_number)
);

create table catalog_sales
(
    cs_sold_date_sk           INTEGER                       ,
    cs_sold_time_sk           INTEGER                       ,
    cs_ship_date_sk           INTEGER                       ,
    cs_bill_customer_sk       INTEGER                       ,
    cs_bill_cdemo_sk          INTEGER                       ,
    cs_bill_hdemo_sk          INTEGER                       ,
    cs_bill_addr_sk           INTEGER                       ,
    cs_ship_customer_sk       INTEGER                       ,
    cs_ship_cdemo_sk          INTEGER                       ,
    cs_ship_hdemo_sk          INTEGER                       ,
    cs_ship_addr_sk           INTEGER                       ,
    cs_call_center_sk         INTEGER                       ,
    cs_catalog_page_sk        INTEGER                       ,
    cs_ship_mode_sk           INTEGER                       ,
    cs_warehouse_sk           INTEGER                       ,
    cs_item_sk                INTEGER               not null,
    cs_promo_sk               INTEGER                       ,
    cs_order_number           INTEGER               not null,
    cs_quantity               INTEGER                       ,
    cs_wholesale_cost         decimal(7,2)                  ,
    cs_list_price             decimal(7,2)                  ,
    cs_sales_price            decimal(7,2)                  ,
    cs_ext_discount_amt       decimal(7,2)                  ,
    cs_ext_sales_price        decimal(7,2)                  ,
    cs_ext_wholesale_cost     decimal(7,2)                  ,
    cs_ext_list_price         decimal(7,2)                  ,
    cs_ext_tax                decimal(7,2)                  ,
    cs_coupon_amt             decimal(7,2)                  ,
    cs_ext_ship_cost          decimal(7,2)                  ,
    cs_net_paid               decimal(7,2)                  ,
    cs_net_paid_inc_tax       decimal(7,2)                  ,
    cs_net_paid_inc_ship      decimal(7,2)                  ,
    cs_net_paid_inc_ship_tax  decimal(7,2)                  ,
    cs_net_profit             decimal(7,2)                  ,
    primary key (cs_item_sk, cs_order_number)
);

create table store_sales
(
    ss_sold_date_sk           INTEGER                       ,
    ss_sold_time_sk           INTEGER                       ,
    ss_item_sk                INTEGER               not null,
    ss_customer_sk            INTEGER                       ,
    ss_cdemo_sk               INTEGER                       ,
    ss_hdemo_sk               INTEGER                       ,
    ss_addr_sk                INTEGER                       ,
    ss_store_sk               INTEGER                       ,
    ss_promo_sk               INTEGER                       ,
    ss_ticket_number          INTEGER               not null,
    ss_quantity               INTEGER                       ,
    ss_wholesale_cost         decimal(7,2)                  ,
    ss_list_price             decimal(7,2)                  ,
    ss_sales_price            decimal(7,2)                  ,
    ss_ext_discount_amt       decimal(7,2)                  ,
    ss_ext_sales_price        decimal(7,2)                  ,
    ss_ext_wholesale_cost     decimal(7,2)                  ,
    ss_ext_list_price         decimal(7,2)                  ,
    ss_ext_tax                decimal(7,2)                  ,
    ss_coupon_amt             decimal(7,2)                  ,
    ss_net_paid               decimal(7,2)                  ,
    ss_net_paid_inc_tax       decimal(7,2)                  ,
    ss_net_profit             decimal(7,2)                  ,
    primary key (ss_item_sk, ss_ticket_number)
);

