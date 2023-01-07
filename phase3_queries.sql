use project;
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;
Select concat(b.title," Code ",a.Id) as list_doreh from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; 
Select concat(fname," ",lname) as names from tbl_users;
Select title from tbl_reshteh;
Select d.Title,concat(b.fname," ",b.lname) as name,a.date_buy from tbl_buy_doreh a left join tbl_users b on a.id_username = b.username left join tbl_doreh c on a.id_doreh = c.Id left join tbl_reshteh d on d.Id = c.id_reshteh ;
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id group by a.id_username order by count(*) desc Limit 10 ;
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 7 DAY) group by a.id_username order by count(*) desc Limit 10 ;
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_username order by count(*) desc Limit 10 ;

Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 7 Day) group by a.id_doreh order by count(*) desc;
Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_doreh order by count(*) desc;

Select c.title , a.discount2 as off_percentage from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.discount2 >= (a.fee*15/100);

Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by from tbl_doreh a left join tbl_institute b on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title;
