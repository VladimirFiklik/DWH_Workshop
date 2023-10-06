create or replace view VT_DW_PARTNER_CRM as
select
c.client_rc                                    as partner_rc_num,
c.client_first_name                            as partner_first_name,
c.client_surname                               as partner_last_name,
c.client_first_name || ' ' || c.client_surname as partner_full_name,
c.client_birth_date                            as partner_birth_date,
c.client_birth_city                            as partner_birth_city,
'CRM'                                          as partner_source_system
from crm_client c;
