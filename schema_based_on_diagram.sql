/* Database schema to keep the structure of entire database. */
-- CREATE DATABASE clinic;

CREATE TABLE patients (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	date_of_birth DATE NOT NULL
);

CREATE TABLE treatments (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	type VARCHAR NOT NULL,
	name VARCHAR(250) NOT NULL
);

CREATE TABLE medical_histories (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	admitted_at TIMESTAMP,
	patient_id INT,
	status VARCHAR(250)
);

CREATE TABLE invoices (
  id BIGSERIAL NOT NULL PRIMARY KEY,
	total_amount DECIMAL,
	generated_at TIMESTAMP,
	payed_at TIMESTAMP,
	medical_history_id INT,
	CONSTRAINT fk_medical_histories
	  FOREIGN KEY (medical_history_id)
	    REFERENCES medical_histories(id)
);

CREATE TABLE invoice_items (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	unit_price DECIMAL,
	quantity INT,
	total_price DECIMAL,
	invoice_id INT,
  treatment_id INT,
  CONSTRAINT fk_invoices
    FOREIGN KEY (invoice_id)
      REFERENCES invoices(id),
  CONSTRAINT fk_treatments
    FOREIGN KEY (treatment_id)
      REFERENCES treatments(id)
);