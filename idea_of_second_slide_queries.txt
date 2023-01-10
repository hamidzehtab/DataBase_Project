select * from tbl_buy_doreh a1 left join tbl_users a2 on a2.Id=a1.id_username order by a1.adate desc limit 10 

select top 3 * from tbl_comments where id_buy_doreh=@v1

select top 3 * from tbl_comments where id_buy_doreh=@v1 order by score

select top 3 * from tbl_comments where id_buy_doreh=@v1 order by score desc

select Id,count(*) as buy_number from tbl_buy_doreh group by Id

select avg(fee),month(adate) from tbl_buy_doreh group by month(adate)

select * from tbl_users group by city



