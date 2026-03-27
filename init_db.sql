--Призначено для MySQL Server

-- 1. Створення таблиці Universities
CREATE TABLE Universities (
`Id` INT NOT NULL AUTO_INCREMENT, 
`UniName` VARCHAR(145) NOT NULL,
`City` VARCHAR(45) NOT NULL,
PRIMARY KEY (`Id`)
);

-- Заповнення Universities 
INSERT INTO Universities (UniName, City) VALUES 
("КПІ", "Київ"),
("НТУ", "Київ"),
("НТУ ХПІ", "Харків"),
("НМУ", "Київ"),
("НУЛП", "Львів"),
("ХНУ", "Харків"),
("ЧНУ", "Черкаси"),
("ВНМУ", "Вінниця"),
("ПНПУ", "Полтава");    

-- 2. Створення таблиці Faculties
CREATE TABLE Faculties (
`Id` INT primary key NOT NULL AUTO_INCREMENT, 
`Name` VARCHAR(45) NOT NULL,
`UniversityId` INT NOT NULL,
FOREIGN KEY (`UniversityId`) REFERENCES Universities (`Id`)
);

-- Заповнення Faculties
INSERT INTO Faculties ( `Name`, UniversityId) VALUES
("Юрфак", 5),
("ФізФак", 2),
("ФЕА", 1),
("ФММ", 1),
("ІстФак", 3),
("ЕкФак", 6),
("ХТФ", 4);

-- 3. Створення таблиці Groups
CREATE TABLE `Groups` (
`Id` INT primary key NOT NULL AUTO_INCREMENT, 
`GroupNumber` INT NOT NULL,
`FacultyId` INT NOT NULL,
FOREIGN KEY (`FacultyId`) references Faculties (`Id`)
);

-- Заповнення Groups 
INSERT INTO `Groups` (GroupNumber, FacultyId) values
(105, 5),
(101, 2),
(202, 1),
(203, 4),
(206, 6),
(301, 6),
(310, 3),
(409, 7),
(501, 5);

-- 4. Створення таблиці Students
CREATE TABLE Students (
`Id` INT primary key NOT NULL AUTO_INCREMENT, 
`Name` VARCHAR(45) NOT NULL,
`Surname` VARCHAR(45) NOT NULL,
`Age` INT NOT NULL,
`GroupId` INT NOT NULL,
FOREIGN KEY (`GroupId`) references `Groups` (`Id`)
);

-- Заповнення Students
INSERT INTO Students (`Name`, Surname, Age, GroupId) values
("Василь", "Звягін", 22, 1),
("Марія", "Стефаненко", 21, 2),
("Сергій", "Момот", 22, 5),
("Іван", "Салогуб", 32, 7),
("Вікторія", "Фисун", 19, 9),
("Людмила", "Слобоженко", 25, 6),
("Іван", "Симоненко", 23, 2),
("Анна", "Стогній", 24, 5),
("Роман", "Бендес", 18, 3),
("Руслан", "Собакар", 24, 4),
("Ірина", "Пиндрик", 31, 8);
