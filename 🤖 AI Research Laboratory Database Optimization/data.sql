INSERT INTO researchers VALUES
(1,'Alice Johnson','Machine Learning','2023-01-01'),
(2,'Bob Smith','Robotics','2023-02-15'),
(3,'Carol Davis','Computer Vision','2023-03-10'),
(4,'David Wilson','NLP','2023-04-20'),
(5,'Emma Brown','AI Ethics','2023-05-12');


INSERT INTO projects VALUES
(1,'Autonomous Drone Navigation','Robotics',2024),
(2,'Medical Image Analysis','Computer Vision',2024),
(3,'Large Language Models','NLP',2024),
(4,'AI for Agriculture','Machine Learning',2023);

INSERT INTO contributions VALUES
(1,1,4,'Lead Researcher'),
(2,2,1,'Lead Researcher'),
(3,3,2,'Research Assistant'),
(4,4,3,'Lead Researcher'),
(5,1,2,'Collaborator'),
(6,2,4,'Collaborator');


INSERT INTO papers VALUES
(1,1,'Drone Path Planning',2024),
(2,2,'Deep Learning for MRI',2024),
(3,3,'Efficient LLM Training',2024),
(4,4,'Crop Yield Prediction',2023);



INSERT INTO grants VALUES
(1,'National AI Fund',50000),
(2,'Robotics Research Grant',75000),
(3,'Healthcare Innovation Grant',60000);



INSERT INTO project_grants VALUES
(1,1,2),
(2,2,3),
(3,3,1),
(4,4,1);
