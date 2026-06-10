SELECT doctors.id,
       doctors.doctor_name,
       COUNT(*) AS visits
FROM doctors
JOIN appointments
ON doctors.id=appointments.doctor_id
GROUP BY doctors.id
ORDER BY visits DESC;
