CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
)

INSERT INTO companies (name)
VALUES ('TechCorp'),
       ('HealthPlus'),
       ('EduWorld'),
       ('Foodies Inc.'),
       ('TravelMate');

INSERT INTO employees (name, company_id)
VALUES ('Alice Johnson', 1),    
       ('Bob Smith', 1),        
       ('Charlie Brown', 2),    
       ('Diana Prince', 3),     
       ('Ethan Hunt', 4),       
       ('Fiona Glenanne', 5),
       ('George Clooney', 2),  
       ('Hannah Montana', 3),  
       ('Ian Fleming', 4),     
       ('Jane Doe', 5),       
       ('Kevin Hart', 1),     
       ('Laura Croft', 2),  
       ('Michael Scott', 3),   
       ('Nina Dobrev', 4),    
       ('Oscar Isaac', 5),
       ('Paul Walker', 1),    
       ('Quinn Fabray', 2),   
       ('Rachel Green', 3),    
       ('Sam Winchester', 4),  
       ('Tina Fey', 5);