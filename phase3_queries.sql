use project;
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;
Select b.title from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; 
Select concat(fname," ",lname) as names from tbl_users;
Select title from tbl_reshteh;
Select 