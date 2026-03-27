# Проектування та Заповнення Бази Даних Університету

Розроблено та заповнено тестовими даними реляційну базу даних для моделювання структури університету. 
Основна мета: створити таблиці, налаштувати зв’язки через зовнішні ключі (Foreign Keys) та заповнити їх даними, що відповідають специфічним бізнес-вимогам (курс групи, імена, назви ВНЗ).

Скрипт розроблено для MySQL Server.

## Виконані Вимоги
- Universities -
 Колонки: Id, UniName, City. Щонайменше один ВНЗ повинен містити букву 'У' у назві. 
- Faculties -
 Колонки: Id, Name, UniversityId. Зв'язок FK до Universities.
- Groups -
 Колонки: Id, GroupNumber, FacultyId. FK до Faculties. Перша цифра номера вказує на курс.
- Students -
 Колонки: Id, Name, Surname, Age, GroupId. FK до Groups. Присутність студента на ім'я Іван. 

##
Весь програмний код (DDL та DML скрипти) знаходиться у файлі `init_db.sql`.

## Результати Запитів
### 1. Таблиця Universities
<img width="598" height="492" alt="image" src="https://github.com/user-attachments/assets/20ed53e8-abc4-442c-a1ab-ebb8cec7fd49" />


### 2. Таблиця Faculties
<img width="468" height="356" alt="image" src="https://github.com/user-attachments/assets/27fb2554-7fd8-4a23-be5e-f6e5bd1d1095" />


### 3. Таблиця Groups
<img width="506" height="394" alt="image" src="https://github.com/user-attachments/assets/4988e513-a01d-4831-94dd-1bef164b9e12" />


### 4. Таблиця Students
<img width="710" height="468" alt="image" src="https://github.com/user-attachments/assets/05a2970d-aa76-462a-b12e-58998148fc5c" />
