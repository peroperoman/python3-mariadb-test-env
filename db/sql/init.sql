CREATE TABLE employees
    (
        id     INTEGER NOT NULL,
        name   CHAR(32),
        age    INTEGER,
        salary INTEGER,
        department_id INTEGER,
        PRIMARY KEY (id)
    )
;


CREATE TABLE departments
    (
        id     INTEGER NOT NULL,
        name   CHAR(32),
        base_city CHAR(32),
        PRIMARY KEY (id)
    )
 ;

-- テストデータ
INSERT
    INTO employees(id, name, age, salary, department_id)
    VALUES
        (1, '佐藤', 60, 500, 4),
        (2, '鈴木', 53, 600, 4),
        (3, '高橋', 31, 700, 5),
        (4, '田中', 36, 800, 3),
        (5, '渡辺', 62, 900, 2),
        (6, '伊藤', 75, 300, 1),
        (7, '山本', 25, 400, 5),
        (8, '中村', 45, 100, 1),
        (9, '小林', 38, 200, 3),
        (10, '加藤', 26, 1000, 3)
;
        
INSERT
    INTO departments(id, name, base_city)
    VALUES
        (1, '人事部', 'osaka'),
        (2, '経理部', 'miyagi'),
        (3, '総務部', 'miyagi'),
        (4, '技術部', 'tokyo'),
        (5, '営業部', 'osaka')
;