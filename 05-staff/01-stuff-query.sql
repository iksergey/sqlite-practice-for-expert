DROP TABLE IF EXISTS employee_details;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Создание таблицы departments
CREATE TABLE IF NOT EXISTS departments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- Создание таблицы employees
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    department_id INTEGER,
    salary REAL,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Создание таблицы employee_details
CREATE TABLE employee_details (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_id INTEGER,
    age INTEGER,
    address TEXT,
    join_date TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Наполнение departments
INSERT INTO departments (id, name) VALUES
(1, 'Отдел разработки'),
(2, 'Отдел маркетинга'),
(3, 'Отдел продаж'),
(4, 'Отдел кадров'),
(5, 'Финансовый отдел');

-- Наполнение employees
INSERT INTO employees (id, name, position, department_id, salary) VALUES
(1, 'Иван Иванов', 'Разработчик', 1, 80000),
(2, 'Петр Петров', 'Маркетолог', 2, 60000),
(3, 'Сергей Петров', 'Менеджер по продажам', 3, 70000),
(4, 'Алексей Алексеев', 'HR-менеджер', 4, 50000),
(5, 'Мария Иванова', 'Бухгалтер', 5, 75000),
(6, 'Дмитрий Дмитриев', 'Разработчик', 1, 85000),
(7, 'Анна Антонова', 'Маркетолог', 2, 62000),
(8, 'Виктор Светляков', 'Менеджер по продажам', 3, 72000),
(9, 'Елена Еленова', 'HR-менеджер', 4, 52000),
(10, 'Инна Крылова', 'Финансовый аналитик', 5, 78000),
(11, 'Николай Николаев', 'Разработчик', 1, 83000),
(12, 'Татьяна Николаева', 'Маркетолог', 2, 61000),
(13, 'Андрей Андреев', 'Менеджер по продажам', 3, 71000),
(14, 'Светлана Дмитриева', 'HR-менеджер', 4, 53000),
(15, 'Игорь Андреев', 'Бухгалтер', 5, 76000),
(16, 'Роман Петров', 'Разработчик', 1, 82000),
(17, 'Юлия Романова', 'Маркетолог', 2, 63000),
(18, 'Александр Асафьев', 'Менеджер по продажам', 3, 73000),
(19, 'Валентина Лебедева', 'HR-менеджер', 4, 54000),
(20, 'Евгений Толстой', 'Финансовый аналитик', 5, 79000);

-- Наполнение employee_details
INSERT INTO employee_details (id, employee_id, age, address, join_date) VALUES
(1, 1, 30, 'ул. Ленина, д. 1, Москва, 123456', '2020-01-15'),
(2, 2, 25, 'ул. Пушкина, д. 2, Санкт-Петербург, 654321', '2021-03-20'),
(3, 3, 35, 'ул. Гагарина, д. 3, Новосибирск, 234567', '2019-07-10'),
(4, 4, 28, 'ул. Советская, д. 4, Екатеринбург, 345678', '2022-05-12'),
(5, 5, 40, 'ул. Мира, д. 5, Казань, 456789', '2018-11-01'),
(6, 6, 32, 'ул. Ленина, д. 6, Москва, 123457', '2020-02-18'),
(7, 7, 27, 'ул. Пушкина, д. 7, Санкт-Петербург, 654322', '2021-04-25'),
(8, 8, 36, 'ул. Гагарина, д. 8, Новосибирск, 234568', '2019-08-15'),
(9, 9, 29, 'ул. Советская, д. 9, Екатеринбург, 345679', '2022-06-20'),
(10, 10, 41, 'ул. Мира, д. 10, Казань, 456780', '2018-12-05'),
(11, 11, 31, 'ул. Ленина, д. 11, Москва, 123458', '2020-03-10'),
(12, 12, 26, 'ул. Пушкина, д. 12, Санкт-Петербург, 654323', '2021-05-30'),
(13, 13, 37, 'ул. Гагарина, д. 13, Новосибирск, 234569', '2019-09-20'),
(14, 14, 30, 'ул. Советская, д. 14, Екатеринбург, 345670', '2022-07-25'),
(15, 15, 42, 'ул. Мира, д. 15, Казань, 456781', '2018-01-15'),
(16, 16, 33, 'ул. Ленина, д. 16, Москва, 123459', '2020-04-15'),
(17, 17, 28, 'ул. Пушкина, д. 17, Санкт-Петербург, 654324', '2021-06-10'),
(18, 18, 38, 'ул. Гагарина, д. 18, Новосибирск, 234570', '2019-10-25'),
(19, 19, 31, 'ул. Советская, д. 19, Екатеринбург, 345671', '2022-08-30'),
(20, 20, 43, 'ул. Мира, д. 20, Казань, 456782', '2018-02-20');

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM employee_details;
