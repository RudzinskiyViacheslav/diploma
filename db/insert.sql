-- TRUNCATE capfk;
-- TRUNCATE departments;
-- TRUNCATE equipment;
-- TRUNCATE users;

-- DROP TABLE users;

-- ALTER SEQUENCE capfk_capfk_id_seq RESTART;
-- ALTER SEQUENCE departments_department_id_seq RESTART;
-- ALTER SEQUENCE equipment_equipment_id_seq RESTART;
-- ALTER SEQUENCE users_user_id_seq RESTART;

INSERT INTO users (first_name, last_name, middle_name, birth_date, adress, mobile_phone, employee_id, passport, email, password, position)
VALUES
('Вячеслав', 'Рудзинский', 'Викторович', '27.03.1999','Москва','89251676327','1','4021298230','slava_99@list.ru', '1234','0'),
('Авдей','Голубицкий', 'Александрович', '18.08.1999','Москва','89251231234','2','4025678230','slaqwewqe_99@list.ru', 'qw','0'),
('Леонид', 'Перлин', 'Сергеевич', '27.03.2000','Москва','89251676778','3','4020178930','qwewqeqwe@list.ru', 'as','1'),
('Ярослав', 'Локтионов', 'Русланович', '27.07.1994','Москва','89251679078','4','4012398230','dasdsads@list.ru', 'zx','1'),
('Александр', 'Бутусов', 'Сергеевич', '17.03.1993','Москва','89251679087','5','4020678230','asdasdsdas@list.ru', 'pop','2'),
('Никита', 'Ткачев', 'Сергеевич', '09.01.2003','Москва','89255678909','6','4020345230','hjjyttj@list.ru', 'sdf','2'),
('Егор', 'Ерошкин', 'Николаевич', '21.05.1998','Москва','89253456587','7','4029078230','uytdhtyh@list.ru', 'vb','2'),
('Тимур', 'Абдуллаев', 'Хабибович', '29.04.2001','Москва','89250981234','8','4020568230','fdgfsdg@list.ru', 'rt','1');

-- 0 - Администратор
-- 1 - Технолог
-- 2 - Инженер

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
('107140, г.Москва, Комсомольская пл., д.2','2118748011002','Занина Татьяна Витальевна','8-499-266-29-69',1,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010992','Занина Татьяна Витальевна','8-499-266-29-69',1,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010637','Занина Татьяна Витальевна','8-499-266-29-69',2,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010930','Занина Татьяна Витальевна','8-499-266-29-69',2,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010937','Занина Татьяна Витальевна','8-499-266-29-69',3,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010094','Занина Татьяна Витальевна','8-499-266-29-69',3,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010861','Занина Татьяна Витальевна','8-499-266-29-69',4,'2'),
('107140, г.Москва, Комсомольская пл., д.2','2118748010958','Занина Татьяна Витальевна','8-499-266-29-69',4,'2'),
('107140, г.Москва, Комсомольская пл., д.2','F001370013737','Занина Татьяна Витальевна','8-499-266-29-69',5,'2'),
('107140, г.Москва, Комсомольская пл., д.2','F001370015717','Занина Татьяна Витальевна','8-499-266-29-69',5,'2');

INSERT INTO equipment (equipment_number, factory_number, delivery_date, depreciation_period,equipment_type, equipment_department_id, price)
VALUES
('papa','mama','2021-12-14','300','Терминал','1','28500'),
('1140748','4321OI4U32IO','2021-10-13', '365','ПАК РМК','1','7000'),
('W0128872','FSDF7DSW8F','2022-04-06', '20','Терминал','2','4600'),
('1140775','J82F9F','2022-04-01', '50','ПАК РМК','2','12000'),
('SL1235465','123123123CO8878','2022-03-21', '200','Экспресс','1','12000'),
('W0128970','231C483098','2022-03-10', '100','Экспресс','3','5000');
UPDATE equipment SET depreciation_end = date(equipment.delivery_date) + int4(equipment.depreciation_period);
