CREATE INDEX idx_appointments_patient_id
ON appointments(patient_id);

CREATE INDEX idx_appointments_doctor_id
ON appointments(doctor_id);

CREATE INDEX idx_doctors_specialization
ON doctors(specialization);

CREATE INDEX idx_prescriptions_appointment_id
ON prescriptions(appointment_id);
