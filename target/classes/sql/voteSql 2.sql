/*

1.投票品項
+-----------+-------------+-------+
|        Id |        name | count | 
+-----------+-------------+-------+
|    101    |   炒飯       |  300  |
|    102    |   炒麵       |  150  |
|    103    |   鍋燒麵     |  200  | 
|    104    |   丼飯       |  100  | 
|    105    |   咖哩飯     |  450  |
+-----------+-------------+-------+

2. 使用者
201是系統管理者
+--------+----------+----------+
| userId | username | password |
+--------+----------+----------+
|  201   | admin123 | pass123  |
|  202   | user456  | pass456  |
|  203   | user789  | pass789  |
+--------+----------+----------+


資料庫的建立: CREATE SCHEMA `vote` DEFAULT CHARACTER SET utf8mb4 ;

 * */
-- 資料表
drop table if exists voteObj;
drop table if exists user;

-- 建立 Product
create table if not exists voteObj(
	id int auto_increment primary key,
    name varchar(50) not null,
    count Integer not null default 0
);

-- 設置 AUTO_INCREMENT = 101
alter table voteObj auto_increment = 101;

-- 建立 User
create table if not exists user(
	userId int auto_increment primary key,
    username varchar(50) not null,
    password varchar(50) not null
);
-- 設置 AUTO_INCREMENT = 201
alter table user auto_increment = 201;



-- 預設資料
INSERT INTO voteObj (Id, Name, count) VALUES
(101, '炒飯', 30),
(102, '炒麵', 15),
(103, '鍋燒麵', 20),
(104, '丼飯', 10),
(105, '咖哩飯', 45);

-- password已經透過AES進行加密
-- KEY=0123456789abcdef0123456789abcdef
INSERT INTO user (userId, username, password) VALUES
(201, 'admin123', 'pass123'),
(202, 'user456', 'pass456'),
(203, 'user789', 'pass789');
