-- ===========================================
-- Riverview University SQL Mystery Pro
-- Author: Caroline Mildred Gomes
-- ===========================================

-- ===========================================
-- Mystery 1: The Missing Scholarship
-- Emily Carter claims she should have received
-- the Academic Excellence Scholarship.
-- ===========================================

-- Find Emily Carter's student record.

SELECT *
FROM students
WHERE name = 'Emily Carter';

-- Find all scholarships awarded to Emily.

SELECT *
FROM awards
WHERE student_id =
(
SELECT id
FROM students
WHERE name = 'Emily Carter'
);

-- Locate the Academic Excellence Scholarship.

SELECT *
FROM scholarships
WHERE scholarship_name =
'Academic Excellence Scholarship';

-- Determine who currently holds the scholarship.

SELECT students.name,
scholarships.scholarship_name,
scholarships.amount
FROM students
JOIN awards
ON students.id = awards.student_id
JOIN scholarships
ON scholarships.id = awards.scholarship_id
WHERE scholarships.scholarship_name =
'Academic Excellence Scholarship';

-- Determine the recipient's major.

SELECT students.name,
majors.major_name
FROM students
JOIN majors
ON students.major_id = majors.id
WHERE students.name = 'RECIPIENT_NAME';

-- ===========================================
-- Mystery 2: The Wrong Recipient
-- Investigate who received the Computer Science
-- Merit Scholarship.
-- ===========================================

-- Locate the scholarship.

SELECT *
FROM scholarships
WHERE scholarship_name =
'Computer Science Merit Scholarship';

-- Find the student who received it.

SELECT students.name,
students.major_id
FROM students
JOIN awards
ON students.id = awards.student_id
JOIN scholarships
ON scholarships.id = awards.scholarship_id
WHERE scholarships.scholarship_name =
'Computer Science Merit Scholarship';

-- Verify the student's major.

SELECT students.name,
majors.major_name
FROM students
JOIN majors
ON students.major_id = majors.id
WHERE students.name = 'RECIPIENT_NAME';

-- Check if a payment was issued.

SELECT *
FROM payments
WHERE student_id =
(
SELECT id
FROM students
WHERE name = 'RECIPIENT_NAME'
);

-- ===========================================
-- Mystery 3: The Forgotten Grant
-- Sophia Johnson never received her grant.
-- ===========================================

-- Locate Sophia Johnson.

SELECT *
FROM students
WHERE name = 'Sophia Johnson';

-- Locate the Family Tuition Grant.

SELECT *
FROM scholarships
WHERE scholarship_name =
'Family Tuition Grant';

-- Check awards associated with Sophia.

SELECT *
FROM awards
WHERE student_id =
(
SELECT id
FROM students
WHERE name = 'Sophia Johnson'
);

-- Find the current holder of the grant.

SELECT students.name,
scholarships.scholarship_name
FROM students
JOIN awards
ON students.id = awards.student_id
JOIN scholarships
ON scholarships.id = awards.scholarship_id
WHERE scholarships.scholarship_name =
'Family Tuition Grant';

-- Determine whether payment has already
-- been made to the current holder.

SELECT *
FROM payments
WHERE student_id =
(
SELECT id
FROM students
WHERE name = 'CURRENT_HOLDER'
);

-- ===========================================
-- Bonus Investigation
-- Database Statistics
-- ===========================================

-- Count students.

SELECT COUNT(*)
FROM students;

-- Count scholarships.

SELECT COUNT(*)
FROM scholarships;

-- Count awards.

SELECT COUNT(*)
FROM awards;

-- Count payments.

SELECT COUNT(*)
FROM payments;

-- Determine which major has received the
-- most scholarship awards.

SELECT majors.major_name,
COUNT(*) AS total_awards
FROM awards
JOIN students
ON awards.student_id = students.id
JOIN majors
ON students.major_id = majors.id
GROUP BY majors.major_name
ORDER BY total_awards DESC;

-- Determine the highest-value scholarship.

SELECT *
FROM scholarships
ORDER BY amount DESC
LIMIT 1;

