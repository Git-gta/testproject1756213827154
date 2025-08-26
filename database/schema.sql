CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    category VARCHAR(255),
    target_audience VARCHAR(255),
    logo_prompt TEXT,
    color_scheme VARCHAR(255)
);

CREATE TABLE features (
    feature_id INT PRIMARY KEY,
    project_id INT,
    feature_name VARCHAR(255),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE tech_stack (
    tech_id INT PRIMARY KEY,
    project_id INT,
    tech_name VARCHAR(255),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO projects (project_id, name, description, category, target_audience, logo_prompt, color_scheme)
VALUES (1, 'TestProject1756213827154', 'Application de test avec nom unique pour vérifier la génération complète', 'Application de test', 'Développeurs', 'Créer un logo simple avec des formes géométriques basiques', '#336699,#99ccff');

INSERT INTO features (feature_id, project_id, feature_name)
VALUES (1, 1, 'Génération de projet'),
       (2, 1, 'Vérification de paramètres'),
       (3, 1, 'Test de création d'application');

INSERT INTO tech_stack(tech_id, project_id, tech_name)
VALUES (1, 1, 'React'),
       (2, 1, 'Node.js'),
       (3, 1, 'PostgreSQL');