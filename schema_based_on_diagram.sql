/* Database schema to keep the structure of entire database. */
CREATE DATABASE clinic;

CREATE TABLE patients (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	date_of_birth DATE NOT NULL,
);

CREATE TABLE treatments (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	type VARCHAR NOT NULL,
	name VARCHAR(100) NOT NULL,
);
