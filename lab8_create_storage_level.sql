create table SA_CUSTOMERS_USER.SA_CUSTOMERS 
(
   customer_id          number(22, 0)                         not null,
   customer_desc        varchar2(30 char)                    not null,
   customer_gender      varchar2(10 char)                    not null,
   customer_age         number (22, 0)                    not null,
   constraint PK_SA_CUSTOMERS primary key (customer_id)
)
tablespace ts_sa_customers_data_01;

create table SA_COMPANIES_USER.SA_COMPANIES 
(
   company_id           number                              not null,
   company_name         varchar(30 char)                    not null,
   compnay_desc         varchar(30 char)                    not null,
   constraint PK_SA_COMPANIES primary key (company_id)
)
tablespace ts_sa_companies_data_01;


create table SA_GAMES_USER.SA_GAMES 
(
   game_id              number                         not null,
   game_desc            varchar(30)                           not null,
   game_cost            decimal                        not null,
   category_id          number                         not null,
   category_desc        varchar(30)                    not null,
   platform_id          number                         not null,
   platform_desc        varchar(30)                    not null,
   constraint PK_SA_GAMES primary key (game_id)
)
tablespace ts_sa_games_data_01;


create table SA_TNX_SALES_USER.SA_TNX_SALES
(
   sales_id         number                         not null,
   sales_amount     number                         null,
   sales_dollars    decimal                        null,
   profit_margin    int                            null,
   constraint PK_SA_SALES primary key (sales_id)
)
tablespace ts_sa_sales_data_01;


create table SA_GEO_LOCATIONS_USER.SA_GEO_LOCATIONS
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
   constraint PK_SA_GEO_LOCATIONS primary key (territory_id)
)
tablespace ts_sa_geo_locations_data_01;
