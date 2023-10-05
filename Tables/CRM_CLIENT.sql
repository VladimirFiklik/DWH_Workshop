-- Create table
create table CRM_CLIENT
(
  client_first_name VARCHAR2(100),
  client_surname    VARCHAR2(100),
  client_rc         VARCHAR2(100),
  client_birth_date DATE,
  client_birth_city VARCHAR2(100)
);

create unique index CRM_CLIENT_NK on CRM_CLIENT(client_rc);

insert into CRM_CLIENT (CLIENT_FIRST_NAME, CLIENT_SURNAME, CLIENT_RC, CLIENT_BIRTH_DATE, CLIENT_BIRTH_CITY)
values ('Jan', 'Novák', '7001017895', to_date('01-01-1970', 'dd-mm-yyyy'), 'Praha');

insert into CRM_CLIENT (CLIENT_FIRST_NAME, CLIENT_SURNAME, CLIENT_RC, CLIENT_BIRTH_DATE, CLIENT_BIRTH_CITY)
values ('Jana', 'Nováková', '7252249987', to_date('24-02-1972', 'dd-mm-yyyy'), 'Plzeň');

insert into CRM_CLIENT (CLIENT_FIRST_NAME, CLIENT_SURNAME, CLIENT_RC, CLIENT_BIRTH_DATE, CLIENT_BIRTH_CITY)
values ('Filip', 'Svoboda', '9007026684', to_date('02-07-1990', 'dd-mm-yyyy'), 'Brno');

insert into CRM_CLIENT (CLIENT_FIRST_NAME, CLIENT_SURNAME, CLIENT_RC, CLIENT_BIRTH_DATE, CLIENT_BIRTH_CITY)
values ('Tereza', 'Dvořáková', '9254161254', to_date('16-04-1992', 'dd-mm-yyyy'), 'Praha');

insert into CRM_CLIENT (CLIENT_FIRST_NAME, CLIENT_SURNAME, CLIENT_RC, CLIENT_BIRTH_DATE, CLIENT_BIRTH_CITY)
values ('Kateřina', 'Veselá', '0406162596', to_date('16-06-2004', 'dd-mm-yyyy'), 'Ostrava');

insert into CRM_CLIENT (CLIENT_FIRST_NAME, CLIENT_SURNAME, CLIENT_RC, CLIENT_BIRTH_DATE, CLIENT_BIRTH_CITY)
values ('Petr', 'Horák', '9512242236', to_date('24-12-1995', 'dd-mm-yyyy'), 'Praha');

commit;