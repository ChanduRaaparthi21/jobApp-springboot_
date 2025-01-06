-- Ensure the table exists (modify this if needed)
CREATE TABLE IF NOT EXISTS Job (
    postId SERIAL PRIMARY KEY,
    postProfile VARCHAR(255) NOT NULL,
    postDesc TEXT NOT NULL,
    reqExperience INT,
    postTechStack TEXT -- Assuming postTechStack is stored as a delimited string
);

-- Insert sample data
INSERT INTO Job (postProfile, postDesc, reqExperience, postTechStack)
VALUES
('Java Developer', 'Develop and maintain Java applications.', 2, 'Java,Spring Boot,MySQL'),
('Frontend Developer', 'Design and implement UI components.', 3, 'HTML,CSS,JavaScript,React'),
('Data Scientist', 'Analyze data and build predictive models.', 5, 'Python,TensorFlow,SQL,Pandas'),
('DevOps Engineer', 'Manage CI/CD pipelines and infrastructure.', 4, 'Docker,Kubernetes,Jenkins,Ansible'),
('Mobile App Developer', 'Develop cross-platform mobile applications.', 3, 'Flutter,Dart,SQLite,REST APIs');
