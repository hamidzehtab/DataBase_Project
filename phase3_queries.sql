use project;
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;

# First query list of products
Select concat(b.title," Code ",a.Id) as list_doreh from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; 

# Second  query list of users
Select concat(fname," ",lname) as names from tbl_users;

# Third query list of products types
Select title from tbl_reshteh;

# 4th query list of orders ( stuff ordered by customers)
Select d.Title,concat(b.fname," ",b.lname) as name,a.date_buy from tbl_buy_doreh a left join tbl_users b on a.id_username = b.username left join tbl_doreh c on a.id_doreh = c.Id left join tbl_reshteh d on d.Id = c.id_reshteh ;

# 5th query top 10 users of all
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id group by a.id_username order by count(*) desc Limit 10 ;
# 5th query top 10 users of week
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 7 DAY) group by a.id_username order by count(*) desc Limit 10 ;
# 5th query top 10 users of month
Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_username order by count(*) desc Limit 10 ;

# 6th query top sold products of week
Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 7 Day) group by a.id_doreh order by count(*) desc;
# 6th query top sold products of month
Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_doreh order by count(*) desc;

# 7th query list of special offers (stuff with more than 15% off)
Select c.title , a.discount2 as off_percentage from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.discount2 >= (a.fee*15/100);

# 8th query list of providers of a product for admin 
Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by from tbl_doreh a left join tbl_institute b on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title;

# 9th query list of providers of a product for admin  
Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by from tbl_institute b left join tbl_doreh a on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title where c.Id = '';

# 9th query showing the cheapest provider of an item for admin
Select concat(a.Id," name ",c.title," offered by ",b.name," for the cheapest price") as offerd_by from tbl_institute b left join tbl_doreh a on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title where c.Id = '' order by a.fee desc LIMIT 1;

# 10th query list of last 10 orders of a user
#select * from tbl_buy_doreh a1 left join tbl_users a2 on a2.Id=a1.id_username order by a1.adate desc limit 10 
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;
Select * from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.id_username=1 order by a.date_buy desc limit 10;

# 11th query list of comments for a given product
# select top 3 * from tbl_comments where id_buy_doreh=@v1
CREATE TABLE `tbl_comment` (
  `Id` int(11) NOT NULL,
  `comment` varchar(2000) DEFAULT NULL,
  `id_username` int(20) DEFAULT NULL,
  `score` varchar(20) DEFAULT NULL,
  `id_doreh` int(20) DEFAULT NULL,
   `adate` datetime default null,
   PRIMARY KEY (`Id`),
   Foreign Key (`id_username`) REFERENCES tbl_users(Id),
   Foreign Key (`id_doreh`) REFERENCES tbl_doreh(Id)
);

Select * from tbl_comments where id_buy_doreh = '' limit 3;

# 12th query top 3 comments which gave the best score to product
select * from tbl_comments where id_buy_doreh=@v1 order by score limit 3;

# 13th query top 3 comments which gave the worst score to product
select * from tbl_comments where id_buy_doreh=@v1 order by score desc limit 3;

# 14th query showing the amount of sale of a product to admin
select Id,count(*) as buy_number from tbl_buy_doreh group by Id;

# 15th query showing the average sale of store to admin
select avg(fee),month(date_buy) from tbl_buy_doreh group by month(date_buy);

# 16th query providers of a given city
select * from tbl_users group by city;

