-- Create table
create table DW_PARTNER
(
  partner_rc_num        VARCHAR2(15),
  partner_first_name    VARCHAR2(255),
  partner_last_name     VARCHAR2(255),
  partner_full_name     VARCHAR2(255),
  partner_birth_date    DATE,
  partner_birth_city    VARCHAR2(255),
  partner_source_system VARCHAR2(50)
);

create unique index DW_PARTNER_NK on DW_PARTNER (partner_rc_num, partner_source_system);