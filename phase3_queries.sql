use project;
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;
Select b.title from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; 
Select concat(fname," ",lname) as names from tbl_users;
Select title from tbl_reshteh;
Select d.Title,concat(b.fname," ",b.lname) as name,a.date_buy from tbl_buy_doreh a left join tbl_users b on a.id_username = b.username left join tbl_doreh c on a.id_doreh = c.Id left join tbl_reshteh d on d.Id = c.id_reshteh ;
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id group by a.id_username order by count(*) desc Limit 10 ;
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 7 DAY) group by a.id_username order by count(*) desc Limit 10 ;
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_username order by count(*) desc Limit 10 ;
