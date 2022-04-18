/* Инициализация БД к диплому */

CREATE UNLOGGED TABLE IF NOT EXISTS Users
(
    user_id int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    first_name varchar(20),
    last_name varchar(20),
    middle_name varchar(20),
    birth_date varchar(20),
    adress varchar(100),
    mobile_phone varchar(20),
    employee_id varchar(20),
    passport varchar(20),
    email varchar(50),
    pass varchar(64),
    position int
);

CREATE UNLOGGED TABLE IF NOT EXISTS Capfk
(
    capfk_id int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    capfk_name varchar(100),
    adress varchar(100),
    station_name varchar(100),
    index_capfk varchar(20),
    departments_quantity varchar(100),
    capfk_master varchar(100)
);

CREATE  UNLOGGED TABLE IF NOT EXISTS Departments
(
    department_id int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    department_adress varchar(100),
    department_number varchar(100),
    department_master varchar(100),
    work_phone varchar(20),
    department_capfk_id int references capfk(capfk_id) not null,
    equipment_quantity varchar(100)
);

CREATE UNLOGGED TABLE IF NOT EXISTS Equipment
(
    equipment_id     int GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    equipment_number varchar(100),
    factory_number   varchar(100),
    delivery_date    varchar(20),
    depreciation_period varchar(100),
    equipment_type varchar(20),
    equipment_department_id int references  departments(department_id) not null,
    price varchar(100)
);

INSERT INTO capfk (capfk_name, adress, station_name, index_capfk, departments_quantity, capfk_master)
VALUES 
('Московский филиал АО ФПК','129272, г. Москва, ул. Верземнека, д.4','Казанский вокзал, касса 1 И','107140','180','Попов Евгений Александрович'),
('Северо-Западный филиал АО ФПК','191036, г. Санкт-Петербург, Невский пр., д.85','Московский вокзал, ст. кас. бил.','191036','393','Корней Дмитрий Иванович'),
('Восточно - Сибирский филиал АО ФПК','664005, Иркутская обл., г. Иркутск, ул. Челнокова, д.1','Красноярск Вокзал, касса 1','660021','353','Владимиров Вадим Владимирович'),
('Горьковский филиал АО ФПК','603002, Нижний Новгород, пл. Революции, д.7а','вокзал Агрыз','422230','146','Шугуров Иван Александрович'),
('Дальневосточный филиал АО ФПК','680021, г. Хабаровск, ул. Ленинградская, д. 56д','вокзал Хабаровск','680021','132','Караев Александр Сергеевич'),
('Куйбышевский филиал АО  ФПК','443030, г.Самара, Комсомольская пл, д.2','вокзал Самара, касса б/н','443030','141','Ковров Сергей Васильевич'),
('Приволжский филиал АО ФПК','410012, г. Саратов, пл. Привокзальная, 1','Саратов-1, касса 1','410012','265','Железнов Валерий Юрьевич'),
('Западно-Сибирский филиал АО ФПК','630003, Новосибирская область, г. Новосибирск, ул. Дмитрия Шамшурина, 33','Омск, касса','644020','151','Подниколенко Анатолий Владимирович'),
('Уральский филиал АО ФПК','620017, г. Екатеринбург, ул. Вокзальная, д.16','Пермь вокзал, касса 1','614990','176','Стельмаченко Олег Васильевич'),
('Северо-Кавказский филиал АО  ФПК','г.Ростов-на-Дону пл.Привокзальная 1/2','Ростов-На-Дону вокзал','344001','196','Парлюк Генадий Павлович');

INSERT INTO departments (department_adress, department_number, department_master, work_phone, department_capfk_id, equipment_quantity)
VALUES
('107140, г.Москва, Комсомольская пл., д.2','2118748011002','Занина Татьяна Витальевна','8-499-266-29-69','1','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010992','Занина Татьяна Витальевна','8-499-266-29-69','1','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010637','Занина Татьяна Витальевна','8-499-266-29-69','2','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010930','Занина Татьяна Витальевна','8-499-266-29-69','2','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010937','Занина Татьяна Витальевна','8-499-266-29-69','3','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010094','Занина Татьяна Витальевна','8-499-266-29-69','3','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010861','Занина Татьяна Витальевна','8-499-266-29-69','4','2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010958','Занина Татьяна Витальевна','8-499-266-29-69','4','2'),
('107140, г.Москва, Комсомольская пл., д.2','F001370013737','Занина Татьяна Витальевна','8-499-266-29-69','5','2'),
('107140, г.Москва, Комсомольская пл., д.2','F001370015717','Занина Татьяна Витальевна','8-499-266-29-69','5','2');

INSERT INTO equipment (equipment_number, factory_number, delivery_date, depreciation_period, equipment_type, equipment_department_id, price)
VALUES
('W0128878','123UY3Y12UI','10.03.2021','365','Терминал','1','5000'),
('1140748','4321OI4U32IO','10.03.2021','365','ПАК РМК','1','7000'),
('W0128872','FSDF7DSW8F','10.03.2021','365','Терминал','2','4600'),
('1140775','J82F9F','10.03.2021','365','ПАК РМК','2','12000'),
('W0128970','231C483098','10.03.2021','365','Экспресс','3','5000');