-- ==============================
-- 初期書籍データ 50件
-- IDはH2に自動採番させる
-- ==============================

MERGE INTO BOOK (TITLE, DATE, PRICE)
KEY (TITLE)
VALUES
('吾輩は猫である', '1905-01-01', 500),
('坊っちゃん', '1906-04-01', 600),
('こころ', '1914-09-01', 700),
('走れメロス', '1940-05-01', 400),
('羅生門', '1915-01-01', 450),
('人間失格', '1948-07-01', 550),
('銀河鉄道の夜', '1934-09-01', 650),
('注文の多い料理店', '1924-12-01', 500),
('雪国', '1937-06-01', 600),
('ノルウェイの森', '1987-09-01', 800),
('舞姫', '1890-01-01', 550),
('高瀬舟', '1916-01-01', 450),
('山月記', '1942-01-01', 500),
('蜘蛛の糸', '1918-01-01', 400),
('檸檬', '1925-01-01', 450),
('金閣寺', '1956-01-01', 850),
('火車', '1992-07-01', 900),
('模倣犯', '2001-04-01', 1000),
('海辺のカフカ', '2002-09-01', 950),
('1Q84', '2009-05-01', 1100),
('そして誰もいなくなった', '1939-11-01', 650),
('夜は短し歩けよ乙女', '2006-11-01', 750),
('舟を編む', '2011-09-01', 800),
('蜜蜂と遠雷', '2016-09-01', 950),
('流浪の月', '2019-08-01', 850),
('推し、燃ゆ', '2020-09-01', 700),
('正欲', '2021-03-01', 900),
('成瀬は天下を取りにいく', '2023-03-01', 850),
('火花', '2015-03-01', 600),
('砂の女', '1962-06-01', 650),
('沈黙', '1966-03-01', 700),
('黒い雨', '1965-01-01', 600),
('風立ちぬ', '1937-04-01', 500),
('斜陽', '1947-07-01', 550),
('ヴィヨンの妻', '1947-01-01', 500),
('たけくらべ', '1895-01-01', 450),
('日本文学入門', '2018-04-01', 1800),
('小説の書き方', '2019-06-01', 1600),
('プログラミング入門', '2024-04-01', 2800),
('JavaではじめるWeb開発', '2024-06-01', 3200),
('Spring Boot実践入門', '2024-09-01', 3500),
('データベース設計入門', '2023-10-01', 2600),
('Webアプリケーション開発の基礎', '2022-05-01', 2400),
('エンジニアのためのGit入門', '2023-02-01', 2200),
('クラウド時代のWeb開発', '2025-01-01', 3000),
('はじめてのSQL', '2021-08-01', 1900),
('北海道の小さな旅', '2022-04-01', 1500),
('料理の基本', '2020-05-01', 1300),
('ゲームを楽しむ技術', '2023-07-01', 1700),
('物語を読む技術', '2017-11-01', 1400);


-- ==============================
-- メディアタイプ
-- 書籍IDはタイトルから取得
-- ==============================

MERGE INTO BOOK_MEDIA_TYPE (BOOK_ID, MEDIA_TYPE)
KEY (BOOK_ID, MEDIA_TYPE)
VALUES
((SELECT ID FROM BOOK WHERE TITLE = '吾輩は猫である'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '吾輩は猫である'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '坊っちゃん'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'こころ'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = 'こころ'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '走れメロス'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '羅生門'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '人間失格'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '人間失格'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '銀河鉄道の夜'), 'オーディオブック'),

((SELECT ID FROM BOOK WHERE TITLE = '注文の多い料理店'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '雪国'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'ノルウェイの森'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = 'ノルウェイの森'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '舞姫'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '高瀬舟'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '山月記'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '蜘蛛の糸'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '檸檬'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '金閣寺'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '金閣寺'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '火車'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '模倣犯'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '模倣犯'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '海辺のカフカ'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '1Q84'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '1Q84'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'そして誰もいなくなった'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '夜は短し歩けよ乙女'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '舟を編む'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '舟を編む'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '蜜蜂と遠雷'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '流浪の月'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '推し、燃ゆ'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '正欲'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '成瀬は天下を取りにいく'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '成瀬は天下を取りにいく'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '火花'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '砂の女'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '沈黙'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '黒い雨'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '風立ちぬ'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '斜陽'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = 'ヴィヨンの妻'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'たけくらべ'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '日本文学入門'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = '日本文学入門'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '小説の書き方'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'プログラミング入門'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = 'プログラミング入門'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'JavaではじめるWeb開発'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = 'JavaではじめるWeb開発'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'Spring Boot実践入門'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = 'Spring Boot実践入門'), '電子本'),
((SELECT ID FROM BOOK WHERE TITLE = 'Spring Boot実践入門'), 'オーディオブック'),

((SELECT ID FROM BOOK WHERE TITLE = 'データベース設計入門'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'Webアプリケーション開発の基礎'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = 'エンジニアのためのGit入門'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'クラウド時代のWeb開発'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = 'はじめてのSQL'), '印刷本'),
((SELECT ID FROM BOOK WHERE TITLE = 'はじめてのSQL'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '北海道の小さな旅'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = '料理の基本'), '印刷本'),

((SELECT ID FROM BOOK WHERE TITLE = 'ゲームを楽しむ技術'), '電子本'),

((SELECT ID FROM BOOK WHERE TITLE = '物語を読む技術'), '印刷本');