CREATE TABLESPACE ts_sa_customers_data_01
DATAFILE 'aharkevich_ts_sa_customers_data_01.dat'
SIZE 200M
 AUTOEXTEND ON NEXT 100M
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_sa_sales_data_01
DATAFILE 'aharkevich_ts_sa_sales_data_01.dat'
SIZE 150M
 AUTOEXTEND ON NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_sa_companies_data_01
DATAFILE 'aharkevich_ts_sa_companies_data_01.dat'
SIZE 150M
 AUTOEXTEND ON NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_sa_geo_locations_data_01
DATAFILE 'aharkevich_ts_sa_geo_locations_data_01.dat'
SIZE 50M
 AUTOEXTEND ON NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_dw_cl
DATAFILE 'aharkevich_ts_dw_cl.dat'
SIZE 150M
 AUTOEXTEND ON NEXT 50
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_dw_data
DATAFILE 'aharkevich_ts_dw_data.dat'
SIZE 200M
 AUTOEXTEND ON  NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_sal_dw_cl
DATAFILE 'aharkevich_ts_sal_dw_cl.dat'
SIZE 50M
 AUTOEXTEND ON NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE ts_sal_cl
DATAFILE 'aharkevich_ts_sal_cl.dat'
SIZE 50M
 AUTOEXTEND ON NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;


CREATE TABLESPACE ts_sal_data
DATAFILE 'aharkevich_ts_sal_data.dat'
SIZE 50M
 AUTOEXTEND ON NEXT 50M
 SEGMENT SPACE MANAGEMENT AUTO;