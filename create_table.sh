#----------------------------------------------
# preprocessing : clean up the existing table
#----------------------------------------------
#echo -n "disable and drop table pea_account_overall_hbase"
disable 'pea_account_overall_hbase'
drop 'pea_account_overall_hbase'  

#------------------------
# creating Hbase table
#------------------------
#echo -n create table pea_account_overall_hbase
create 'pea_account_overall_hbase', 'cf_hfc', 'cf_spt', 'cf_ein'
list 'pea_account_overall_hbase'

#------------------------
# put rows in the table 
#------------------------
#echo -n put rows into table
put 'pea_account_overall_hbase', '1', 'cf_hfc:hfc_up', '45'
put 'pea_account_overall_hbase', '1', 'cf_hfc:hfc_dn', '85'
put 'pea_account_overall_hbase', '1', 'cf_spt:spt_up', '55'
put 'pea_account_overall_hbase', '1', 'cf_spt:spt_dn', '74'
put 'pea_account_overall_hbase', '1', 'cf_spt:spt_up', '45'
put 'pea_account_overall_hbase', '1', 'cf_spt:spt_dn', '57'
put 'pea_account_overall_hbase', '1', 'cf_ein:lin_up', '76'
put 'pea_account_overall_hbase', '1', 'cf_ein:smt_pr', '45'

put 'pea_account_overall_hbase', '2', 'cf_hfc:hfc_up', '25'
put 'pea_account_overall_hbase', '2', 'cf_hfc:hfc_dn', '85'
put 'pea_account_overall_hbase', '2', 'cf_spt:spt_up', '55'
put 'pea_account_overall_hbase', '2', 'cf_spt:spt_dn', '72'
put 'pea_account_overall_hbase', '2', 'cf_spt:spt_up', '25'
put 'pea_account_overall_hbase', '2', 'cf_spt:spt_dn', '57'
put 'pea_account_overall_hbase', '2', 'cf_ein:lin_up', '76'
put 'pea_account_overall_hbase', '2', 'cf_ein:smt_pr', '25'

put 'pea_account_overall_hbase', '3', 'cf_hfc:hfc_up', '75'
put 'pea_account_overall_hbase', '3', 'cf_hfc:hfc_dn', '35'
put 'pea_account_overall_hbase', '3', 'cf_spt:spt_up', '65'
put 'pea_account_overall_hbase', '3', 'cf_spt:spt_dn', '72'
put 'pea_account_overall_hbase', '3', 'cf_spt:spt_up', '39'
put 'pea_account_overall_hbase', '3', 'cf_spt:spt_dn', '67'
put 'pea_account_overall_hbase', '3', 'cf_ein:lin_up', '16'
put 'pea_account_overall_hbase', '3', 'cf_ein:smt_pr', '65'

put 'pea_account_overall_hbase', '4', 'cf_hfc:hfc_up', '45'
put 'pea_account_overall_hbase', '4', 'cf_hfc:hfc_dn', '85'
put 'pea_account_overall_hbase', '4', 'cf_spt:spt_up', '55'
put 'pea_account_overall_hbase', '4', 'cf_spt:spt_dn', '74'
put 'pea_account_overall_hbase', '4', 'cf_spt:spt_up', '45'
put 'pea_account_overall_hbase', '4', 'cf_spt:spt_dn', '57'
put 'pea_account_overall_hbase', '4', 'cf_ein:lin_up', '76'
put 'pea_account_overall_hbase', '4', 'cf_ein:smt_pr', '45'

put 'pea_account_overall_hbase', '5', 'cf_hfc:hfc_up', '55'
put 'pea_account_overall_hbase', '5', 'cf_hfc:hfc_dn', '85'
put 'pea_account_overall_hbase', '5', 'cf_spt:spt_up', '55'
put 'pea_account_overall_hbase', '5', 'cf_spt:spt_dn', '35'
put 'pea_account_overall_hbase', '5', 'cf_spt:spt_up', '55'
put 'pea_account_overall_hbase', '5', 'cf_spt:spt_dn', '53'
put 'pea_account_overall_hbase', '5', 'cf_ein:lin_up', '36'
put 'pea_account_overall_hbase', '5', 'cf_ein:smt_pr', '55'

put 'pea_account_overall_hbase', '6', 'cf_hfc:hfc_up', '65'
put 'pea_account_overall_hbase', '6', 'cf_hfc:hfc_dn', '85'
put 'pea_account_overall_hbase', '6', 'cf_spt:spt_up', '55'
put 'pea_account_overall_hbase', '6', 'cf_spt:spt_dn', '76'
put 'pea_account_overall_hbase', '6', 'cf_spt:spt_up', '65'
put 'pea_account_overall_hbase', '6', 'cf_spt:spt_dn', '57'
put 'pea_account_overall_hbase', '6', 'cf_ein:lin_up', '76'
put 'pea_account_overall_hbase', '6', 'cf_ein:smt_pr', '65'

#---------------------------------------
# scan table : view the data in Htable
#---------------------------------------
#echo -n scan pea_account_overall_hbase
scan 'pea_account_overall_hbase'

#-----------------------
# get a row from table
#-----------------------
#echo -n get pea_account_overall_hbase row1
get 'pea_account_overall_hbase', '1'

#disable 'test'
#echo -n enable table pea_account_overall_hbase
enable 'pea_account_overall_hbase'
            