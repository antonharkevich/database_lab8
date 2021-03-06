CREATE USER SA_CUSTOMERS_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sa_customers_data_01;

GRANT CONNECT,RESOURCE TO SA_CUSTOMERS_USER;


CREATE USER SA_TNX_SALES_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sa_sales_data_01;

GRANT CONNECT,RESOURCE TO SA_TNX_SALES_USER;


CREATE USER SA_COMPANIES_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sa_companies_data_01;

GRANT CONNECT,RESOURCE TO SA_COMPANIES_USER;


CREATE USER SA_GEO_LOCATIONS_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sa_geo_locations_data_01;

GRANT CONNECT,RESOURCE, CREATE VIEW TO SA_GEO_LOCATIONS_USER;


CREATE USER SA_GAMES_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sa_games_data_01;

GRANT CONNECT,RESOURCE, CREATE VIEW TO SA_GAMES_USER;


CREATE USER DW_CL_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_dw_cl;

GRANT CONNECT,RESOURCE, CREATE VIEW TO DW_CL_USER;


CREATE USER TS_DW_DATA_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_dw_data;

GRANT CONNECT,RESOURCE, CREATE VIEW TO TS_DW_DATA_USER;


CREATE USER SAL_DW_CL_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sal_dw_cl;

GRANT CONNECT,RESOURCE, CREATE VIEW TO SAL_DW_CL_USER;


CREATE USER SAL_CL_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sal_cl;

GRANT CONNECT,RESOURCE, CREATE VIEW TO SAL_CL_USER;


CREATE USER TS_SAL_DATA_USER
  IDENTIFIED BY "%PWD%"
    DEFAULT TABLESPACE ts_sal_data;

GRANT CONNECT,RESOURCE, CREATE VIEW TO TS_SAL_DATA_USER;