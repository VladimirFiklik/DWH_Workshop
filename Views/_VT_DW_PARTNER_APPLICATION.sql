create or replace view VT_DW_PARTNER_APPLICATION as
select
p.person_rc_num                                  as partner_rc_num,
p.person_first_name                              as partner_first_name,
p.person_last_name                               as partner_last_name,
p.person_first_name || ' ' || p.person_last_name as partner_full_name,
to_date(p.person_birth_date, 'dd.mm.yyyy')       as partner_birth_date,
p.person_city_of_birth                           as partner_birth_city,
'APPLICATION'                                    as partner_source_system
from APPLICATION_PERSON p;
