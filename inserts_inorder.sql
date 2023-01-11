use project;
Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;
Select b.title from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; 
Select concat(fname," ",lname) as names from tbl_users;
Select title from tbl_reshteh;


INSERT INTO `settings` (`id`, `id_color`, `about_us_p`, `founder_p`, `name_pic_1`, `name_pic_2`, `name_pic_3`, `name_pic_4`, `name_pic_5`, `name_pic_6`, `two_founder`, `founder_p2`, `name_pic_7`, `name_pic_8`) VALUES
(1, 1, 'امروزه بازار اشتغال مناسب و متناسب با شخصیت، توانمندی و اندوخته علمی افراد صرفا مختص به دارندگان مدارک دانشگاهی و مدارج علمی و آکادمیک نیست. بلکه افرادی صاحب شغل و جایگاه کاری متناسب تری هستند که علاوه بر دانش از سطح مهارت و توانمندی و قابلیت های کاری لازم نیز برخوردارند. با چنین آنالیزی هسته برگزاری دوره های فنی و حرفه ای در حوزه مرتبط با آموزش عالی وارستگان که حوزه علوم پزشکی و پیراپزشکی بود، شکل گرفت. یعنی افراد می توانند با گذراندن دوره های کوتاه مدت و تخصصی فنی و حرفه ای بصورت مهارتی قابلیت های کاری آن مبحث را در خود پرورش داده و هم از لحاظ علمی و هم از لحاظ مهارتی آمادگی های مقبولی جهت اشتغال در خود ایجاد کنند.', 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.', '.png', '.png', '.jpeg', '.jpeg', '61020.png', '.jpeg', NULL, NULL, NULL, NULL);



INSERT INTO `tbl_users` (`Id`, `username`, `password`, `fname`, `lname`, `active`, `state`, `phone`, `codemeli`, `sh_sh`, `father`, `ldate`, `ms`, `marital`, `country`, `grade`, `field`, `fixed_phone`, `city`, `address`, `email`, `shaba`, `card`, `name_pic_1`, `name_pic_2`, `name_pic_3`, `name_pic_4`, `name_pic_5`, `name_pic_6`, `name_pic_7`, `know`, `gender`, `name_pic_8`, `label`, `post`, `adate`, `phone2`, `more_inf`, `fee_offer`) VALUES
(2, '1', 0xc4ca4238a0b923820dcc509a6f75849b, 'Hamid', 'Zehtab', 1, 1, '1', '0925943037', '', '', '', '', 0, 1, '0', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '2022-09-23 16:39:25', '', '', 0),
(4, '2', 0xc906d2805942af21fbdcc001dd61815e, '1', '1', 1, 1, '09940374593', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-24 18:52:59', NULL, NULL, NULL),
(6, '23', 0x37693cfc748049e45d87b8c7d8b9aacd, 'Sajjad', 'Arghaiee', 1, 1, '34', '23', '', '', '', '', 0, 1, '0', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '2022-09-29 14:44:10', '', '', 0),
(8, '2342', 0x2321994d85d661d792223f647000c65f, '23', '234', 1, 1, '2342', '2342', '', '', '', '', 0, 1, '0', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '2022-09-29 14:45:21', '', '', 0),
(5, '34', 0xe369853df766fa44e1ed0ff613f563bd, 'a', 'b', 1, 1, '343', '34', '', '', '', '', 0, 1, '0', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '2022-09-24 19:49:20', '', '', 0),
(7, '422', 0xf85454e8279be180185cac7d243c5eb3, 'صثق', '234', 1, 1, '234', '422', '', '', '', '', 0, 1, '0', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '2022-09-29 14:44:54', '', '', 0),
(9, '654', 0xab233b682ec355648e7891e66c54191b, 'سیب', 'تسنمیب', 1, 4, '464', '654', '', '', '', '', 0, 1, '0', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, '', '2022-09-29 14:45:50', '', '', 0),
(1, 'Nimz', 0xc906d2805942af21fbdcc001dd61815e, 'nima', 'zare', 1, 3, '09055307841', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-23 15:56:42', NULL, NULL, NULL);


INSERT INTO `tbl_reshteh` (`Id`, `Title`, `Detail`, `state`, `id_sort`, `name_pic`, `session`, `session_t`, `session_a`, `fee`, `fee_together`, `payment1`, `payment2`, `international_code`, `delivery_book`, `give_book`, `exam`, `govahi`, `karvarzi`, `karamozi`, `record_score`, `record_portal`, `gender`, `subset`, `name_pic_2`, `virtual`, `private_class`, `label`, `color_text`, `color_back`, `absent`, `capacity`, `second_exam`, `second_portal`) VALUES
(3, 'کمک های اولیه', '', 1, 1, '.72608.jpeg', 12, 14, 26, 800000, 750000, 350000, 400000, '541120470020001', 1, 1, 1, 1, 1, 1, 1, 1, 0, 2, NULL, NULL, NULL, 'کمک', '#000000', '#000000', NULL, NULL, NULL, NULL),
(4, 'sdf', '', 1, 4, '.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'a', '', 1, 4, '.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO `tbl_classroom` (`Id`, `classroom`, `name`, `id_reshteh`) VALUES
(1, 101, 'swer', 3),
(2, 102, 'kjg', 4),
(3, 101, 'پویا', 5);


INSERT INTO `tbl_doreh` (`Id`, `id_reshteh`, `code_doreh`, `start_doreh`, `end_doreh`, `name_pic`, `state`, `session`, `session_t`, `session_a`, `fee`, `fee_together`, `payment1`, `payment2`, `capacity`, `absent`, `no_start_date`, `no_seen_title`, `gender`, `name_pic_2`, `virtual`, `private_class`, `color_text`, `color_back`, `second_exam`, `second_portal`, `closed`) VALUES
(97, 3, NULL, '1400/02/30', '1400/03/29', '..jpeg', 1, 12, 14, 26, 800000, 750000, 350000, 400000, 10, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 3, NULL, '1400/02/21', '1400/05/21', NULL, 1, 12, 14, 26, 800000, 750000, 350000, 400000, 10, 12, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 4, NULL, '1400/01/05', '1400/01/10', NULL, 1, 3, 12, 5, 850000, 750000, 400000, 400000, 10, 11, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 4, NULL, '1401/07/04', '1401/07/23', NULL, 1, 3, 12, 5, 850000, 800000, 400000, 400000, 10, 2, 0, '', 0, NULL, 1, 1, '#000000', '#000000', 3, 31, 0),
(102, 5, NULL, '1400/03/08', '1400/03/12', NULL, NULL, 3, 12, 5, 850000, 800000, 400000, 400000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO `tbl_buy_doreh` (`Id`, `id_doreh`, `date_buy`, `id_username`, `fee`, `score_t`, `score_a`, `score`, `exam`, `delivery_book`, `cancel`, `penalty_cancel`, `cancel_date`, `card`, `portal`, `type`, `discount1`, `discount2`, `id_discount2`, `state`, `seen`, `id_record`, `adate_delivery_book`) VALUES
(142, 101, '2021-05-06 07:25:31', 2, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 97, '2021-05-06 07:26:02', 1, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 98, '2021-05-23 20:58:50', 6, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 101, '2022-09-23 16:57:24', 2, 850000, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, '2022-09-29 13:26:04'),
(146, 97, '2022-09-24 15:52:38', 2, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL),
(147, 100, '2022-09-24 19:30:23', 2, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100000, NULL, NULL, 1, 1, 1, NULL),
(148, 98, '2022-09-24 19:30:30', 2, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL),
(149, 101, '2022-09-24 19:49:42', 5, 850000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, '2022-09-29 13:28:30'),
(150, 101, '2022-09-29 14:44:17', 6, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL),
(151, 101, '2022-09-29 14:44:58', 7, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL),
(152, 100, '2022-09-29 14:45:04', 1, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100000, NULL, NULL, 1, 1, 1, NULL),
(153, 101, '2022-09-29 14:45:24', 8, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL),
(154, 100, '2022-09-29 14:45:30', 8, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100000, NULL, NULL, 1, 1, 1, NULL),
(155, 101, '2022-09-29 14:45:53', 1, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL),
(156, 100, '2022-09-29 14:45:55', 9, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100000, NULL, NULL, 1, 1, 1, NULL),
(157, 98, '2022-09-29 14:45:56', 1, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 50000, NULL, NULL, 1, 1, 1, NULL);




INSERT INTO `tbl_attendance` (`Id`, `id_buy_doreh`, `session`, `presence`) VALUES
(96, 155, 824, 2),
(97, 154, 1364, 1),
(98, 150, 1364, 2);

Insert Into `tbl_comment` Values
(1,' It was very helpful', 2,100,101,'2023-01-01 07:25:31'),
(2,'Never buy this ! Its a piece of crack !!!',1,10,100,'2022-12-06 07:25:31'),
(3,'I learnt a lot from this wonderful cource',2,95,97,'2022-01-01 07:25:31'),
(4,'It was a horrible disaster ! such a waste of time ! never ever buy this filthy thing',1,50,101,'2020-05-06 07:25:31'),
(5,'It was not as good as they said it would be',6,60,98,'2021-05-06 07:25:31'),
(6,'This is some medicore stuff',6,70,101,'2022-01-01 07:25:31');

INSERT INTO `tbl_discount` (`Id`, `title`, `pass_code`, `percent_discount`, `max_discount`, `min_buy`, `start_discount`, `end_discount`, `state`, `specific_doreh`, `specific_user`) VALUES
(1, 'a', 'Salart22@', 2, 23000, 20000, '1399/11/02', '1400/02/15', 2, 97, 0),
(2, 'sdfsd', '23', 100, 41500, 2000, '1400/01/03', '1400/03/26', 1, 97, 0);