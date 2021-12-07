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

