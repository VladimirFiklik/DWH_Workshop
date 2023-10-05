Data Festival DWH Workshop - cvičení

Připojení k databázi
  - Přes webové rozhraní na adrese https://gf8f5077a457360-datafestival.adb.eu-frankfurt-1.oraclecloudapps.com/
  
  - Přes lokálního Oracle clienta - viz Connection string na konci
  
 


1) Vytvořte si struktury tabulek primárních systémů CRM_CLIENT a APPLICATION_PERSON a naplňte je daty

   - skript Tables\CRM_CLIENT.sql

   - skript Tables\APPLICATION_PERSON.sql

 

2) Vytvořte si strukturu tabulky DW_PARTNER v datovém skladu

   - skript Tables\DW_PARTNER.sql

 

3) Prohlídněte si struktury tabulek a rozmyslete, jak transformujete data z primárních tabulek aby odpovídaly struktuře tabulky DW_PARTNER

 

4) Transformujte data pomocí SQL

  4a) Vytvořte view VT_DW_PARTNER_CRM tak, aby četlo data z tabulky CRM_CLIENT a vracelo stejnou strukturu (atributy) jako má DW_PARTNER

  4b) Vytvořte view VT_DW_PARTNER_APPLICATION tak, aby četlo data z tabulky CRM_CLIENT a vracelo stejnou strukturu (atributy) jako má DW_PARTNER

 

5) Naplňte transformovaná data do tabulky DW_PARTNER

  5a) Spuštěním skriptu Data\data_DW_PARTNER_CRM.sql naplníte data z VT_DW_PARTNER_CRM do DW_PARTNER

  5b) Spuštěním skriptu Data\data_DW_PARTNER_APPLICATION.sql naplníte data z VT_DW_PARTNER_APPLICATION do DW_PARTNER

 

6) Prohlídněte si data v tabulce DW_PARTNER, měli byste vidět že v ní jsou jak data z CRM, tak data z APPLICATION

 

7) Zamyslete se nad reportem, který nad těmito daty vytvoříte v Power BI.

   - Data pro report můžete vyexportovat z databáze do souboru a postavit report nad souborem, nebo připojit Power BI přímo do Oracle databáze

   - Příklady reportů které můžete vytvořit jsou

     -- počet klientů narozených v jednotlivých městech

                -- počet klientů narozených v jednotlivých dekádách (např. 1990-1999, 2000-2009, ...)

   - Pokud budete potřebovat transformovat data pro report, můžete tak udělat buď v Power BI, nebo v SQL v databázi
   
   
Připojení k databázi přes lokálního Oracle clienta:
do tnsnames.ora zadat connection string:
datafestival_low = (description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.eu-frankfurt-1.oraclecloud.com))(connect_data=(service_name=gf8f5077a457360_datafestival_low.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))


   