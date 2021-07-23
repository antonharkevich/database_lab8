create table TS_SAL_DATA_USER.DIM_DATE 
(
   date_id              number                         not null,
   date_desc            varchar(30)                    not null,
   date_full_number varchar2(20)                   not null,
   date_full_string     varchar2(50)                   not null,
   weekday_fl           number                         not null,
   us_civil_holiday_fl  number                         not null,
   last_day_of_week_fl  number                         not null,
   last_day_of_month_fl number                         not null,
   last_day_of_qtr_fl   number                         not null,
   last_day_of_yr_fl    number                         not null,
   day_id               number                         not null,
   day_desc             varchar(30)                    not null,
   day_of_week_name     varchar(20)                   not null,
   day_of_week_abbr     varchar2(20)                      not null,
   day_number_of_week   number                         not null,
   day_number_of_month  number                         not null,
   day_number_of_qtr    number                         not null,
   day_number_of_yr     number                         not null,
   week_id              number                         not null,
   week_desc            varchar(30)                    not null,
   week_number_of_month number                         not null,
   week_number_of_qtr   number                         not null,
   week_number_of_yr    number                         not null,
   week_begin_dt        date                           not null,
   week_end_dt          date                           not null,
   month_id             number                         not null,
   month_desc           varchar(30)                    not null,
   month_name           varchar2(20)                   not null,
   month_name_abbr      varchar2(20)                   not null,
   month_number_of_qtr  number                         not null,
   month_number_of_yr   number                         not null,
   month_begin_dt       date                           not null,
   month_end_dt         date                           not null,
   quarter_id           number                         not null,
   quarter_desc         varchar(30)                    not null,
   qtr_number_of_yr     number                         not null,
   qtr_begin_dt         date                           not null,
   qtr_end_dt           date                           not null,
   year_id              number                         not null,
   year_desc            varchar(30)                    not null,
   yr_begin_dt          date                           not null,
   yr_end_dt            date                           not null,
   insert_dt            date                           not null,
   update_dt            date                           not null,
   constraint PK_DIM_DATE primary key (date_id)
)
tablespace ts_sal_data;



create table TS_SAL_DATA_USER.DIM_GEO_LOCATIONS 
(
   territory_id         number                         not null,
   territory_desc       varchar(30)                    not null,
   country_id           number                         not null,
   country_code         varchar(30)                    not null,
   country_desc         varchar(30)                    not null,
   region_id            number                         not null,
   region_code          varchar(30)                    not null,
   region_desc          varchar(30)                    not null,
   part_id              number                         not null,
   part_code            varchar(30)                    not null,
   part_desc            varchar(30)                    not null,
   geo_systems_id       number                         not null,
   geo_systems_code     varchar(30)                    not null,
   geo_systems_desc     varchar(30)                    not null,
   geo_id               number                         not null,
   geo_code             varchar(30)                    not null,
   geo_type_id          number                         not null,
   geo_type_code        varchar(30)                    not null,
   geo_type_desc        varchar(30)                    not null,
   insert_dt            date                           not null,
   update_dt            date                           not null,
   constraint PK_DIM_GEO_LOCATIONS primary key (territory_id)
)
tablespace ts_sal_data;

create table TS_SAL_DATA_USER.DIM_GAMES_SCD 
(
   game_id              number                         not null,
   game_surr_id         number                         not null,
   game_desc            varchar(30)                           not null,
   game_cost            decimal                        not null,
   valid_from           date                           not null,
   valid_to             date                           not null,
   is_active            number                         not null,
   category_id          number                         not null,
   category_desc        varchar(30)                    not null,
   platform_id          number                         not null,
   platform_desc        varchar(30)                    not null,
   insert_dt            date                           not null,
   constraint PK_DIM_GAMES_SCD primary key (game_surr_id)
)
tablespace ts_sal_data;



create table TS_SAL_DATA_USER.DIM_GEN_PERIODS 
(
   sales_cat_id         number                         not null,
   sales_cat_desc       varchar(30)                    not null,
   start_amount         number                         not null,
   end_amount           number                         not null,
   insert_dt            date                           not null,
   update_dt            date                           not null,
   constraint PK_DIM_GEN_PERIODS primary key (sales_cat_id)
)
tablespace ts_sal_data;


create table TS_SAL_DATA_USER.DIM_CUSTOMERS 
(
   customer_id          number                         not null,
   customer_desc        varchar(30)                    not null,
   customer_gender      varchar(10)                    not null,
   customer_age         number                         not null,
   insert_dt            date                           not null,
   update_dt            date                           not null,
   constraint PK_DIM_CUSTOMERS primary key (customer_id)
)
tablespace ts_sal_data;


create table TS_SAL_DATA_USER.DIM_COMPANIES 
(
   company_id           number                         not null,
   company_name         varchar(30)                    not null,
   compnay_desc         varchar(30)                    not null,
   insert_dt            date                           not null,
   update_dt            date                           not null,
   constraint PK_DIM_COMPANIES primary key (company_id)
)
tablespace ts_sal_data;


create table TS_SAL_DATA_USER.FCT_SALES_DD
(
   event_dt             date                           not null,
   game_surr_id         number                         not null,
   company_id           number                         not null,
   customer_id          number                         not null,
   date_id              number                         not null,
   territory_id         number                         not null,
   sales_cat_id         number                         not null,
   fct_sales_amount     number                         null,
   fct_sales_dollars    decimal                        null,
   fct_profit_margin    int                            null,
   insert_dt            date                           not null
)
tablespace ts_sal_data;

alter table TS_SAL_DATA_USER.FCT_SALES_DD
   add constraint FK_FCT_SALE_REFERENCE_DIM_GEO_LOCATIONS foreign key (territory_id)
      references TS_SAL_DATA_USER.DIM_GEO_LOCATIONS (territory_id)
      on delete cascade;

alter table TS_SAL_DATA_USER.FCT_SALES_DD
   add constraint FK_FCT_SALE_REFERENCE_DIM_GAME foreign key (game_surr_id)
      references TS_SAL_DATA_USER.DIM_GAMES_SCD (game_surr_id)
     on delete cascade;

alter table TS_SAL_DATA_USER.FCT_SALES_DD
   add constraint FK_FCT_SALE_REFERENCE_DIM_COMPANIES foreign key (company_id)
      references TS_SAL_DATA_USER.DIM_COMPANIES (company_id)
      on delete cascade;

alter table TS_SAL_DATA_USER.FCT_SALES_DD
   add constraint FK_FCT_SALE_REFERENCE_DIM_CUSTOMERS foreign key (customer_id)
      references TS_SAL_DATA_USER.DIM_CUSTOMERS (customer_id)
      on delete cascade;

alter table TS_SAL_DATA_USER.FCT_SALES_DD
   add constraint FK_FCT_SALE_REFERENCE_DIM_DATE foreign key (date_id)
      references TS_SAL_DATA_USER.DIM_DATE (date_id)
      on delete cascade;

alter table TS_SAL_DATA_USER.FCT_SALES_DD
   add constraint FK_FCT_SALE_REFERENCE_DIM_GEN_PERIODS foreign key (sales_cat_id)
      references TS_SAL_DATA_USER.DIM_GEN_PERIODS  (sales_cat_id)
      on delete cascade;