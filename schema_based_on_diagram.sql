CREATE DATABASE clinic;

CREATE TABLE patients(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  date_of_birth DATE
);

CREATE TABLE medical_histories(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  admitted_at TIMESTAMP,
  status VARCHAR(20),
  patient_id INT,

  CONSTRAINT fk_patient_id FOREIGN KEY(patient_id) REFERENCES patients(id)   
);

CREATE INDEX medical_histories_patient_id ON medical_histories(patient_id);

CREATE TABLE treatments(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  type VARCHAR(40),
  name VARCHAR(50)
);

CREATE TABLE medical_histories_treatments(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  treatments_id INT,
  medical_history_id INT,

  CONSTRAINT fk_medical_history_id FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id),
  CONSTRAINT fk_treatments_id FOREIGN KEY(treatments_id) REFERENCES treatments(id)  
);

CREATE INDEX medical_histories_treatments_treatments_id ON medical_histories_treatments(treatments_id);
CREATE INDEX medical_histories_treatments_medical_history_id ON medical_histories_treatments(medical_history_id);

CREATE TABLE invoices(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  total_amount decimal,
  generated_amount TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT,

  CONSTRAINT fk_medical_history_id FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id)  
);

CREATE INDEX invoices_medical_history_id ON invoices(medical_history_id);

