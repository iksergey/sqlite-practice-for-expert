INSERT INTO employees (id, name, position, salary, email)
VALUES (1, 'Иван Иванов', 'Менеджер', 50000.00, 'ivan.ivanov@example.com');

INSERT INTO employees (id, name, position, salary, email)
VALUES (2, 'Анна Смирнова', 'Разработчик', 60000.00, 'anna.smirnova@example.com'),
       (3, 'Петр Петров', 'Аналитик', 55000.00, 'petr.petrov@example.com');

INSERT INTO employees (name, position, salary, email)
VALUES ('Елена Кузнецова', 'Тестировщик', 48000.00, 'elena.kuznetsova@example.com');

INSERT INTO employees (name, salary, email)
VALUES ('Максим Соколов', 52000.00, 'maxim.sokolov@example.com');

SELECT * FROM employees;
