-- SQL Запити: Вибірка, фільтрація, сортування та об'єднання даних

-- 1. Вибрати всі поля з таблиці студентів
SELECT * FROM Students;

-- 2. Вибрати лише імена та прізвища студентів
SELECT `Name`, Surname FROM Students;

-- 3. Вибрати лише тих студентів, у яких ім‘я Іван
SELECT * FROM Students WHERE`Name` = "Іван";

-- 4. Вибрати лише ті групи, номери яких більше 300 
SELECT * FROM `Groups` WHERE GroupNumber > 300;

-- 5. Вибрати лише ті університети, що в назві містять букву "У"
SELECT * FROM Universities WHERE UniName LIKE "%У%";

-- 6. Відсортувати таблицю студентів за прізвищем за алфавітом 
SELECT * FROM Students ORDER BY Surname ASC;

-- 7. Відсортувати таблицю студентів за прізвищем у зворотному порядку 
SELECT * FROM Students ORDER BY Surname DESC;

-- 8. Об'єднати таблиці Груп та Студентів за допомогою JOIN
SELECT * FROM `Groups` JOIN Students ON `Groups`.ID = Students.GroupId;

-- 9. Підрахувати загальну кількість факультетів
SELECT COUNT(*) FROM Faculties;
