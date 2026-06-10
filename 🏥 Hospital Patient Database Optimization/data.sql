INSERT INTO patients (id, name, phone, registration_date) VALUES
(1, 'Alice Johnson', '01711111111', '2024-01-01'),
(2, 'Bob Smith', '01722222222', '2024-01-05'),
(3, 'Carol Davis', '01733333333', '2024-01-10'),
(4, 'David Wilson', '01744444444', '2024-01-12'),
(5, 'Emma Brown', '01755555555', '2024-01-15');


INSERT INTO doctors (id, doctor_name, specialization) VALUES
(1, 'Dr. Hasan', 'Cardiology'),
(2, 'Dr. Rahman', 'Neurology'),
(3, 'Dr. Ahmed', 'Orthopedics'),
(4, 'Dr. Khan', 'Dermatology');


INSERT INTO appointments
(id, patient_id, doctor_id, appointment_date, status)
VALUES
(1,1,1,'2024-02-01','Completed'),
(2,1,2,'2024-02-15','Completed'),
(3,2,1,'2024-02-20','Completed'),
(4,3,3,'2024-03-01','Pending'),
(5,4,2,'2024-03-05','Completed'),
(6,5,1,'2024-03-10','Completed'),
(7,2,4,'2024-03-12','Completed');



INSERT INTO prescriptions
(id, appointment_id, medicine)
VALUES
(1,1,'Aspirin'),
(2,2,'Vitamin B'),
(3,3,'Atorvastatin'),
(4,4,'Ibuprofen'),
(5,5,'Paracetamol');




INSERT INTO departments
(id, department_name)
VALUES
(1,'Cardiology'),
(2,'Neurology'),
(3,'Orthopedics'),
(4,'Dermatology');


