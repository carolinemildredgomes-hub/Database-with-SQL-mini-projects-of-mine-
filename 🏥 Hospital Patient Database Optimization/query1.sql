SELECT doctors.doctor_name,
       appointments.appointment_date
FROM appointments
JOIN doctors
ON appointments.doctor_id = doctors.id
WHERE appointments.patient_id = 5;
