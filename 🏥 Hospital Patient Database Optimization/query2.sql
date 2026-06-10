SELECT name
FROM patients
WHERE id IN (
    SELECT patient_id
    FROM appointments
    WHERE doctor_id =
    (
        SELECT id
        FROM doctors
        WHERE specialization='Cardiology'
    )
);
