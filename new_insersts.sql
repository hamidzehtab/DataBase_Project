use sql_store;
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;
Select b.title from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; 
Select concat(fname," ",lname) as names from tbl_users;
Select title from tbl_reshteh;

INSERT INTO `tbl_doreh`(`Id`, `id_reshteh`, `code_doreh`, `start_doreh`, `end_doreh`, `name_pic`, `state`, `session`, `session_t`, `session_a`, `fee`, `fee_together`, `payment1`, `payment2`, `capacity`, `absent`, `no_start_date`, `no_seen_title`, `gender`, `name_pic_2`, `virtual`, `private_class`, `color_text`, `color_back`, `second_exam`, `second_portal`, `closed`) VALUES
(105, 5, NULL, '1401/04/21', '1400/05/02', NULL, 1, 9, 15, 20, 850000, 800000, 400000, 400000, 20, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),	
(106, 6, NULL, '1400/04/30', '1400/04/12', NULL, 1, 5, 10, 17, 800000, 700000, 350000, 350000, 7, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 6, NULL, '1400/05/25', '1400/05/31', NULL, 1, 7, 12, 19, 800000, 750000, 350000, 400000, 15, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 2, NULL, '1400/06/01', '1400/06/8', NULL, 1, 4, 10, 12, 800000, 800000, 400000, 400000, 30, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 3, NULL, '1400/06/19', '1400/06/31', NULL, 1, 12, 10, 20, 800000, 750000, 350000, 400000, 14, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 7, NULL, '1401/01/25', '1401/02/20', NULL, 1, 12, 11, 22, 800000, 750000, 350000, 400000, 14, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 7, NULL, '1401/02/12', '1401/02/28', NULL, 1, 12, 8, 18, 800000, 750000, 350000, 400000, 14, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 8, NULL, '1401/03/21', '1401/04/17', NULL, 1, 21, 20, 30, 800000, 750000, 350000, 400000, 14, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `tbl_reshteh`(`Id`, `Title`, `Detail`, `state`, `id_sort`, `name_pic`, `session`, `session_t`, `session_a`, `fee`, `fee_together`, `payment1`, `payment2`, `international_code`, `delivery_book`, `give_book`, `exam`, `govahi`, `karvarzi`, `karamozi`, `record_score`, `record_portal`, `gender`, `subset`, `name_pic_2`, `virtual`, `private_class`, `label`, `color_text`, `color_back`, `absent`, `capacity`, `second_exam`, `second_portal`) VALUES
(6, 'new lesson', '', 1, 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'new lesson2', '', 1, 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'new lesson3', '', 1, 4, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);