USE ecommerce;
start transaction;
/*
TRUNCATE TABLE order_main;
TRUNCATE TABLE product_category;
TRUNCATE TABLE product_info;
TRUNCATE TABLE product_in_order;
TRUNCATE TABLE users;
TRUNCATE TABLE wishlist;
*/



INSERT INTO `order_main` (`order_id`, `buyer_address`, `buyer_email`, `buyer_name`, `buyer_phone`, `create_time`, `order_amount`, `order_status`, `update_time`) VALUES
(2147483643, '200 Delhi Junction Road', 'customer2@email.com', 'customer2', '2343456', '2022-01-12 15:52:20', '200.00', 1, '2022-01-12 15:52:20'),
(2147483645, '200 Delhi Junction Road', 'customer2@email.com', 'customer2', '2343456', '2022-03-1 12:52:29', '10.00', 1, '2022-03-1 12:52:29'),
(2147483641, '200 Delhi Junction Road', 'customer2@email.com', 'customer2', '2343456', '2022-05-5 16:52:07', '50.00', 2, '2022-05-5 16:52:07'),
(2147483647, '200 Delhi Junction Road', 'customer2@email.com', 'customer2', '2343456', '2022-04-26 18:52:35', '25.00', 2, '2022-04-26 18:52:35'),
(2147483649, '200 Delhi Junction Road', 'customer2@email.com', 'customer2', '2343456', '2022-05-18 18:58:23', '152.00', 1, '2022-05-18 18:58:23'),
(2147483642, '6969 Mumbai East', 'customer1@email.com', 'customer1', '123456789', '2022-07-9 17:01:21', '52.00', 2, '2022-07-9 17:01:21'),
(2147483640, '6969 Mumbai East', 'customer1@email.com', 'customer1', '123456789', '2022-07-7 13:01:16', '65.00', 2, '2022-07-7 13:01:16'),
(2147483648, '6969 Mumbai East', 'customer1@email.com', 'customer1', '123456789', '2022-06-14 11:01:06', '250.00', 1, '2022-06-14 11:01:06');


-- --------------------------------------------------------


INSERT INTO `product_category` (`category_id`, `category_name`, `category_type`, `create_time`, `update_time`) VALUES
(2147483641, 'Books', 0, '2018-03-09 23:03:26', '2018-03-10 00:15:27'),
(2147483642, 'Clothes', 2, '2018-03-10 00:15:02', '2018-03-10 00:15:21'),
(2147483644, 'Drink', 3, '2018-03-10 01:01:09', '2018-03-10 01:01:09'),
(2147483645, 'Food', 1, '2018-03-10 00:26:05', '2018-03-10 00:26:05');

-- --------------------------------------------------------

/*
UPDATE product_info
SET product_icon = 'https://m.media-amazon.com/images/I/41fYBlpG-bL._SY346_.jpg'
WHERE product_id = 'B0001';
*/

INSERT INTO `product_info` (`product_id`, `category_type`, `create_time`, `product_description`, `product_icon`, `product_name`, `product_price`, `product_status`, `product_stock`, `update_time`) VALUES
('B0009', 0, '2018-03-10 19:42:02', 'Java 8 Features', 'https://m.media-amazon.com/images/P/B01M0E28Q4.01._SCLZZZZZZZ_SX500_.jpg', 'Core Java', '15.00', 0, 100, '2018-03-10 19:42:02'),
('C0003', 2, '2018-03-10 12:12:46', 'Black Jacket', 'https://m.media-amazon.com/images/I/61T0orudVHL._UL1500_.jpg', 'Jacket', '18.00', 0, 150, '2018-03-10 12:12:46'),
('D0005', 3, '2018-03-10 06:51:03', '300ml Flavoured Drink', 'https://www.kindpng.com/picc/m/336-3361296_sprite-can-ml-hd-png-download.png', 'Sprite', '2.00', 0, 400, '2018-03-10 12:04:13'),
('B0008', 0, '2022-07-10 13:50:11', 'Python for Beginners', 'https://m.media-amazon.com/images/I/518JSMYkY7L.jpg', 'Python Programming', '30.00', 0, 250, '2022-07-10 13:50:11'),
('C0001', 2, '2018-03-10 12:09:41', 'Designer Cotton T-Shirt', 'https://m.media-amazon.com/images/I/51w7bn+zn6L._UL1000_.jpg', 'T-Shirt', '12.00', 0, 15, '2018-03-10 12:09:41'),
('C0002', 2, '2018-03-10 12:11:51', 'Casual Slimfit', 'https://m.media-amazon.com/images/I/61100SqRbcL._UL1500_.jpg', 'Shirt', '15.00', 0, 260, '2022-07-09 14:36:20'),
('B0007', 0, '2022-07-10 13:43:23', 'Java Crash Course', 'https://m.media-amazon.com/images/P/B07TT6DV66.01._SCLZZZZZZZ_SX500_.jpg', 'Programming with Java', '25.00', 0, 100, '2022-07-10 13:43:23'),
('B0010', 0, '2018-03-10 10:39:29', 'Vol-3 Edition', 'https://m.media-amazon.com/images/P/0439706386.01._SCLZZZZZZZ_SX500_.jpg', 'Bone Series', '16.00', 0, 155, '2018-03-10 10:39:32'),
('B0011', 0, '2018-03-10 10:40:35', 'Adventures of Genei', 'https://images-na.ssl-images-amazon.com/images/I/71d1Qj+qRCL.jpg', 'Aladdin', '24.00', 0, 289, '2018-03-10 10:40:35'),
('D0004', 3, '2018-03-10 12:08:17', 'Pure Coffee Beans', 'https://media.istockphoto.com/photos/cup-of-cafe-latte-with-coffee-beans-and-cinnamon-sticks-picture-id505168330?b=1&k=20&m=505168330&s=170667a&w=0&h=jJTePtpYZLR3M2OULX5yoARW7deTuAUlwpAoS4OriJg=', 'Capuccino', '5.00', 0, 200, '2022-07-10 13:43:23'),
('D0001', 3, '2018-03-10 12:15:05', 'Extra Cheese & Toppings', 'https://c4.wallpaperflare.com/wallpaper/1017/647/742/food-pizza-still-life-hd-wallpaper-preview.jpg', 'Veg Pizza', '12.00', 0, 125, '2018-03-10 12:15:10'),
('D0002', 3, '2018-03-10 12:16:44', 'Fresh & Crispy', 'https://static.toiimg.com/thumb/83114901.cms?width=1200&height=900', 'Chicken Nuggets', '10.00', 0, 200, '2018-03-10 12:16:44'),
('D0003', 3, '2019-03-10 10:26:14', 'Salty & Crunchy', 'https://images.unsplash.com/photo-1518013431117-eb1465fa5752?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJlbmNoJTIwZnJpZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', 'French Fries', '7.00', 0, 300, '2022-03-10 10:26:14'),


('B0003', 0, '2022-05-18 18:42:02', 'Cotton Fabric Material', 'https://ii1.pepperfry.com/media/catalog/product/a/n/800x880/antalya-1-seater-sofa-in-grey-colour-by-urban-living-antalya-1-seater-sofa-in-grey-colour-by-urban-l-joiarq.jpg', 'Urban Grey Sofa', '65.00', 1, 0, '2022-05-18 18:42:02'),
('B0001', 0, '2022-06-1 18:12:46', '2 Seater Leather Sofa', 'https://ii1.pepperfry.com/media/catalog/product/p/a/568x284/patrick-two-seater-sofa-in-red--colour-by-durian-patrick-two-seater-sofa-in-red--colour-by-durian-f9mycq.jpg', 'Red Velvet Sofa', '105.00', 0, 25, '2022-06-1 18:12:46'),
('B0002', 0, '2022-02-5 17:04:13', 'Brown Leatherette Sofa', 'https://ii1.pepperfry.com/media/catalog/product/f/o/800x880/four-square-3-seater-recliner-in-brown-colour-by-star-india-four-square-3-seater-recliner-in-brown-c-d1btgh.jpg', '3 Seater Recliner', '135.00', 0, 40, '2022-02-5 17:04:13'),
('B0004', 0, '2022-07-10 12:44:11', 'Queen Size Matte Finish', 'https://ii1.pepperfry.com/media/catalog/product/v/i/800x880/victoria-queen-size-bed-with-hydraulic-storage-in-gloss-finish-by-a-globia-creations-victoria-queen--1ufsbs.jpg', 'Victoria Bed', '200.00', 0, 8, '2022-07-10 12:44:11'),
('B0005', 0, '2021-05-10 15:09:41', 'Queen Size Honey Finish', 'https://ii1.pepperfry.com/media/catalog/product/b/e/800x880/beatrice-queen-size-bed-with-storage-in-honey-finish-by-evok-beatrice-queen-size-bed-with-storage-in-zjnwli.jpg', 'Beatrice Bed', '225.00', 0, 15, '2021-05-10 15:09:41'),
('B0006', 0, '2022-04-16 15:36:20', '6 Seater Brown Finish', 'https://ii1.pepperfry.com/media/catalog/product/s/e/800x880/segur-solid-wood-6-seater-dining-set-in-provincial-teak-finish-by-woodsworth-segur-solid-wood-6-seat-z7e0rt.jpg', 'Teak Dining Set', '150.00', 0, 60, '2022-04-16 15:36:20'),
('F0001', 1, '2022-04-10 08:41:25', 'Ceramic Set of 3 pots', 'https://ii1.pepperfry.com/media/catalog/product/b/l/800x880/black-ceramic-balti-shape-desk-pot--set-of-3-by-justoriginals-black-ceramic-balti-shape-desk-pot--se-bydkut.jpg', 'Black Plant Pot', '20.00', 0, 90, '2022-04-10 08:41:25'),
('F0002', 1, '2022-05-15 18:38:29', 'Blue Ceramic Tray pot', 'https://ii1.pepperfry.com/media/catalog/product/b/l/800x880/blue-ceramic-medium-circular-bonsai-tray-desk-pot-by-justoriginals-blue-ceramic-medium-circular-bons-mzt0hc.jpg', 'Bonsai Tray Pot', '26.00', 0, 110, '2022-05-15 18:38:29'),
('F0003', 1, '2022-07-20 11:47:35', 'Sky blue Owl Shape', 'https://ii1.pepperfry.com/media/catalog/product/s/k/800x880/sky-blue-ceramic-owl-shape-medium-planter-by-justoriginals-sky-blue-ceramic-owl-shape-medium-planter-aixl8r.jpg', 'Blue Ceramic Pot', '24.00', 0, 289, '2022-07-20 11:47:35');




-- --------------------------------------------------------
/*
UPDATE product_in_order
SET product_description = 'Java Crash Course', product_icon = 'https://m.media-amazon.com/images/I/41fYBlpG-bL._SY346_.jpg'
WHERE order_id = 2147483641;
*/


INSERT INTO `product_in_order` (`id`, `category_type`, `count`, `product_description`, `product_icon`, `product_id`, `product_name`, `product_price`, `product_stock`, `cart_user_id`, `order_id`) VALUES
(2147483642, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 96, NULL, 2147483641);
/*
(2147483644, 0, 1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 2147483643),
(2147483646, 1, 1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', '4.00', 57, NULL, 2147483645),
(2147483648, 3, 1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', '2.00', 200, NULL, 2147483647),
(2147483640, 1, 1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', '4.00', 57, NULL, 2147483649),
(2147483641, 2, 1, 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'C0002', 'Shirts', '13.00', 108, NULL, 2147483649),
(2147483632, 1, 1, 'Family s', 'http://cdn1.thecomeback.com/wp-content/uploads/2017/05/mcdonalds_food-832x447.png', 'F0002', 'McDonald‘s Food', '20.00', 22, NULL, 2147483649),
(2147483643, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 96, NULL, 2147483648),
(2147483634, 2, 1, 'Under Armour', 'https://assets.academy.com/mgen/33/20088533.jpg?is=500,500', 'C0001', 'T-shirt', '10.00', 109, NULL, 2147483649),
(2147483636, 0, 1, 'Java SE', 'https://images-na.ssl-images-amazon.com/images/I/51S8VRHA2FL._SX357_BO1,204,203,200_.jpg', 'B0005', 'Thinking in Java', '30.00', 199, NULL, 2147483645),
(2147483647, 3, 1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', '2.00', 200, NULL, 2147483645),
(2147483638, 0, 1, 'Java SE', 'https://www.pearsonhighered.com/assets/bigcovers/0/1/3/2/0132778041.jpg', 'B0004', 'Effective Java', '30.00', 199, NULL, 2147483645),
(2147483649, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 96, NULL, 2147483645),
(2147483631, 1, 1, 'Family s', 'http://cdn1.thecomeback.com/wp-content/uploads/2017/05/mcdonalds_food-832x447.png', 'F0002', 'McDonald‘s Food', '20.00', 22, NULL, 2147483640),
(2147483633, 1, 1, 'Kids Party Food', 'http://asset1.marksandspencer.com/is/image/mands/MS_FD_F04C_00398503_NC_X_EC_0?$PDP_MAXI_ZOOM_NEW$', 'F0001', 'Chicken', '4.00', 57, NULL, 2147483642),
(4, 0, 4, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 8, NULL, 7),
(6, 2, 1, 'Boys Clothes', 'https://d2ul0w83gls0j4.cloudfront.net/taxonomy/300/0102/20171024151632.jpg', 'C0002', 'Shirts', '13.00', 108, NULL, 7),
(8, 0, 7, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 9),
(10, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 4, NULL, 11),
(13, 0, 6, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 7, NULL, NULL),
(14, 0, 1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 15),
(16, 0, 1, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 7, NULL, 17),
(19, 0, 4, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 25),
(23, 0, 4, 'Books for learning Java', 'https://images-na.ssl-images-amazon.com/images/I/41f6Rd6ZEPL._SX363_BO1,204,203,200_.jpg', 'B0001', 'Core Java', '30.00', 6, NULL, 25),
(24, 3, 1, 'Awesome', 'https://starbuckssecretmenu.net/wp-content/uploads/2017/06/Starbucks-Violet-Drink.jpg', 'D0002', 'Starbucks Violet Drink', '2.00', 200, NULL, 25),
(26, 0, 1, 'Learn Spring', 'https://images-na.ssl-images-amazon.com/images/I/51gHy16h5TL._SX397_BO1,204,203,200_.jpg', 'B0002', 'Spring In Action', '20.00', 195, NULL, 27);

*/

-- --------------------------------------------------------



INSERT INTO `users` (`id`, `active`, `address`, `email`, `name`, `password`, `phone`, `role`) VALUES
(2147483641, b'1', '6969 Mumbai East', 'customer1@email.com', 'customer1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123456789', 'ROLE_CUSTOMER'),
(2147483642, b'1', '888 Newyork South', 'manager1@email.com', 'manager1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '987654321', 'ROLE_CUSTOMER'),
(2147483643, b'1', '757 Japan south park', 'employee1@email.com', 'employee1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', '123123122', 'ROLE_EMPLOYEE'),
(2147483645, b'1', '200 Delhi Junction Road', 'customer2@email.com', 'customer2', '$2a$10$0oho5eUbDqKrLH026A2YXuCGnpq07xJpuG/Qu.PYb1VCvi2VMXWNi', '2343456', 'ROLE_CUSTOMER'),
(1, b'1', 'vijayawada', 'admin@gmail.com', 'admin', '$2a$10$4Do3nESN0i4Nnrq9bMr97uS.YW./9gmjL/bjBG3gN6qk/WuuYSV3W', '1234567890', 'ROLE_MANAGER');


-- --------------------------------------------------------

INSERT INTO `wishlist` (`id`, `created_date`, `product_id`, `user_id`) VALUES
(3, '2022-07-09 14:21:09', 'B0001', 2147483641),
(5, '2022-07-09 14:30:43', 'C0002', 2147483641),
(12, '2022-07-09 17:42:22', 'B0001', 2147483641),
(18, '2022-07-10 13:07:33', 'B0002', 2147483641),
(20, '2022-07-10 13:07:43', 'F0002', 2147483641),
(22, '2022-07-10 13:42:36', 'B0001', 2147483641);


commit;