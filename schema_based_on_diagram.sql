-- create patients table
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE
);

-- create medical_histories
CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIME,
  status VARCHAR(255),
  FOREIGN KEY (patient_id) 
    REFERENCES patients (id)
    ON DELETE CASCADE
)