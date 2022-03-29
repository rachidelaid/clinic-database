-- create patients table
CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  date_of_birth DATE
);

-- create medical_histories table
CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIME,
  patient_id INT,
  status VARCHAR(255),
  FOREIGN KEY (patient_id) 
    REFERENCES patients (id)
    ON DELETE CASCADE
);

-- craete treatments table
CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  type VARCHAR(255),
  name VARCHAR(50),
);