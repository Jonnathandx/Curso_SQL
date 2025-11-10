-- Entity: developers
CREATE TABLE developers (
    developer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(15),
    mail VARCHAR(50) UNIQUE NOT NULL
);

-- Entity: projects
CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    start_date DATE
);

CREATE TABLE developers_projects (
    -- Claves foráneas que apuntan a las tablas principales
    developer_id INT NOT NULL,
    project_id INT NOT NULL,
    
    -- Campos adicionales (atributos de la relación)
    hours_worked INT, 
    role VARCHAR(50), 
    
    -- La Clave Primaria Compuesta garantiza que un par (Programador, Proyecto) sea único
    PRIMARY KEY (developer_id, project_id), 
    
    -- Restricción 1: FK a la tabla developers
    FOREIGN KEY (developer_id) REFERENCES developers(developer_id)
        ON DELETE CASCADE,
        
    -- Restricción 2: FK a la tabla projects
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
        ON DELETE CASCADE,
    
    -- Restricción 3: Asegura que no haya duplicados en la combinación de developer_id y project_id
    UNIQUE (developer_id, project_id)
);

-- Insertar datos en la tabla developers
INSERT INTO developers (name, last_name, age, gender, mail) VALUES 
('Alice', 'Johnson', 30, 'Female', 'alice.johnson@gmail.com'),
('Bob', 'Smith', 28, 'Male', 'bob.smith@yahoo.com'),
('Charlie', 'Brown', 45, 'Male', 'charlie.brown@outlook.com'),
('Diana', 'Miller', 32, 'Female', 'diana.miller@dev.io'),
('Evan', 'Davis', 25, 'Male', 'evan.davis@company.com'),
('Fiona', 'Garcia', 38, 'Female', 'fiona.garcia@gmail.com'),
('George', 'Rodriguez', 51, 'Male', 'george.rodriguez@yahoo.com'),
('Hannah', 'Wilson', 29, 'Female', 'hannah.wilson@outlook.com'),
('Ian', 'Martinez', 34, 'Male', 'ian.martinez@dev.io'),
('Julia', 'Anderson', 42, 'Female', 'julia.anderson@company.com'),
('Kevin', 'Thomas', 27, 'Male', 'kevin.thomas@gmail.com'),
('Laura', 'Taylor', 31, 'Female', 'laura.taylor@yahoo.com'),
('Mike', 'Moore', 48, 'Male', 'mike.moore@outlook.com'),
('Nina', 'Jackson', 26, 'Female', 'nina.jackson@dev.io'),
('Oscar', 'Martin', 39, 'Male', 'oscar.martin@company.com'),
('Paula', 'Lee', 33, 'Female', 'paula.lee@gmail.com'),
('Quentin', 'Perez', 41, 'Male', 'quentin.perez@yahoo.com'),
('Rachel', 'Thompson', 24, 'Female', 'rachel.thompson@outlook.com'),
('Sam', 'White', 36, 'Male', 'sam.white@dev.io'),
('Tina', 'Harris', 47, 'Female', 'tina.harris@company.com'),
('Umar', 'Sanchez', 29, 'Male', 'umar.sanchez@gmail.com'),
('Vera', 'Clark', 35, 'Female', 'vera.clark@yahoo.com'),
('Walter', 'Lewis', 55, 'Male', 'walter.lewis@outlook.com'),
('Xena', 'Robinson', 30, 'Female', 'xena.robinson@dev.io'),
('Yusuf', 'Walker', 28, 'Male', 'yusuf.walker@company.com'),
('Zoe', 'Hall', 37, 'Female', 'zoe.hall@gmail.com'),
('Adam', 'Young', 43, 'Male', 'adam.young@yahoo.com'),
('Bella', 'Allen', 26, 'Female', 'bella.allen@outlook.com'),
('Carlos', 'King', 32, 'Male', 'carlos.king@dev.io'),
('Daisy', 'Wright', 40, 'Female', 'daisy.wright@company.com'),
('Leo', 'Scott', 29, 'Male', 'leo.scott@gmail.com'),
('Mia', 'Green', 31, 'Female', 'mia.green@yahoo.com'),
('Noah', 'Baker', 46, 'Male', 'noah.baker@outlook.com'),
('Olivia', 'Adams', 25, 'Female', 'olivia.adams@dev.io'),
('Peter', 'Nelson', 38, 'Male', 'peter.nelson@company.com'),
('Quinn', 'Carter', 44, 'Female', 'quinn.carter@gmail.com'),
('Ryan', 'Mitchell', 27, 'Male', 'ryan.mitchell@yahoo.com'),
('Sophia', 'Perez', 33, 'Female', 'sophia.perez@outlook.com'),
('Tom', 'Roberts', 50, 'Male', 'tom.roberts@dev.io'),
('Ursula', 'Turner', 34, 'Female', 'ursula.turner@company.com'),
('Victor', 'Phillips', 29, 'Male', 'victor.phillips@gmail.com'),
('Wendy', 'Campbell', 41, 'Female', 'wendy.campbell@yahoo.com'),
('Xander', 'Parker', 30, 'Male', 'xander.parker@outlook.com'),
('Yara', 'Evans', 28, 'Female', 'yara.evans@dev.io'),
('Zane', 'Edwards', 36, 'Male', 'zane.edwards@company.com'),
('Amy', 'Collins', 49, 'Female', 'amy.collins@gmail.com'),
('Ben', 'Stewart', 31, 'Male', 'ben.stewart@yahoo.com'),
('Chloe', 'Sanchez', 27, 'Female', 'chloe.sanchez@outlook.com'),
('David', 'Morris', 39, 'Male', 'david.morris@dev.io'),
('Ella', 'Rogers', 42, 'Female', 'ella.rogers@company.com');

-- Insertar datos en la tabla projects
INSERT INTO projects (title, start_date) VALUES 
('Project Alpha', '2023-01-15'),
('Project Beta', '2023-02-20'),
('Project Gamma', '2023-03-10'),
('Project Delta', '2023-04-05'),
('Project Epsilon', '2023-05-12'),
('Project Zeta', '2023-06-18'),
('Project Eta', '2023-07-22'),
('Project Theta', '2023-08-30'),    
('Project Iota', '2023-09-14'),
('Project Kappa', '2023-10-01');

-- Insertar datos en la tabla developers_projects
INSERT INTO developers_projects (developer_id, project_id, hours_worked, role) VALUES 
(1, 1, 120, 'Project Manager'),
(2, 1, 80, 'Backend Developer'),
(3, 1, 80, 'Frontend Developer'),
(4, 1, 40, 'QA Tester'),
(5, 2, 100, 'UI/UX Designer'),
(6, 2, 90, 'Backend Developer'),
(7, 2, 90, 'Frontend Developer'),
(1, 2, 40, 'Project Manager'),
(8, 3, 160, 'DevOps'),
(9, 3, 100, 'Backend Developer'),
(10, 3, 100, 'Frontend Developer'),
(11, 4, 120, 'Project Manager'),
(12, 4, 80, 'Backend Developer'),
(13, 4, 80, 'UI/UX Designer'),
(14, 4, 60, 'QA Tester'),
(15, 4, 90, 'Frontend Developer'),
(16, 5, 100, 'Backend Developer'),
(17, 5, 100, 'Backend Developer'),
(18, 5, 40, 'Scrum Master'),
(19, 5, 60, 'QA Tester'),
(20, 6, 120, 'Frontend Developer'),
(21, 6, 100, 'Backend Developer'),
(22, 6, 80, 'DevOps'),
(2, 6, 60, 'Backend Developer'),
(23, 7, 160, 'Project Manager'),
(24, 7, 100, 'UI/UX Designer'),
(25, 7, 100, 'Frontend Developer'),
(26, 7, 90, 'Backend Developer'),
(27, 7, 40, 'QA Tester'),
(28, 8, 120, 'Backend Developer'),
(29, 8, 120, 'Backend Developer'),
(30, 8, 80, 'DevOps'),
(31, 9, 100, 'Frontend Developer'),
(32, 9, 100, 'Backend Developer'),
(33, 9, 40, 'QA Tester'),
(11, 9, 80, 'Project Manager'),
(34, 10, 160, 'Project Manager'),
(35, 10, 100, 'Backend Developer'),
(36, 10, 100, 'Frontend Developer'),
(37, 10, 80, 'UI/UX Designer'),
(38, 10, 40, 'QA Tester'),
(39, 1, 60, 'DevOps'),
(40, 2, 50, 'QA Tester'),
(41, 3, 70, 'Frontend Developer'),
(42, 4, 90, 'Backend Developer'),
(43, 5, 110, 'DevOps'),
(44, 6, 80, 'UI/UX Designer'),
(45, 7, 40, 'Scrum Master'),
(46, 8, 100, 'Frontend Developer'),
(47, 9, 60, 'QA Tester'),
(48, 10, 80, 'Backend Developer'),
(49, 1, 100, 'Frontend Developer'),
(50, 2, 70, 'Backend Developer');


SELECT * from developers;
SELECT * from projects;
SELECT * from developers_projects;