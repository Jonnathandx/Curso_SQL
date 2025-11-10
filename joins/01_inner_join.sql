SELECT users.name, "CI".number FROM users
INNER JOIN "CI" ON users.id = "CI".id;

SELECT developers.name, developers.last_name, projects.title, developers_projects.role FROM developers_projects
INNER JOIN developers ON developers_projects.developer_id = developers.developer_id
INNER JOIN projects ON developers_projects.project_id = projects.project_id;