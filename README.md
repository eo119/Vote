/*

1.投票品項
+-----------+-------------+-------+
|    Id     |    name     | count | 
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

功能API
1.查詢所有投票資料
2.根據Id查詢投票
3.新增一筆投票資料
4. 刪除一筆投票資料
5.新增一筆計數
6.查詢所有使用者資料
7.根據id查詢使用者
8.此網站個網址僅供擁有權限者可以進入，他人無法透過網址強行連入


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

INSERT INTO user (userId, username, password) VALUES
(201, 'admin123', 'pass123'),
(202, 'user456', 'pass456'),
(203, 'user789', 'pass789');

SpringBoot還正在自我複習中，所以此次專案以SpringMVC的方式製作，以呈現我的學習成果與短期專案製作能力。
