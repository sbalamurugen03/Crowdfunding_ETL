-- Create database crowdfunding_db
CREATE DATABASE crowdfunding_db;

-- Create category table
CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(50) NOT NULL
);

-- Create subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(50) NOT NULL
);

-- Create contacts table
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NULL,
	last_name VARCHAR(50)  NULL,
    email VARCHAR(50) NULL,
);


-- Create campaign table
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR(50),
	description VARCHAR(200),
	goal numeric(22) NULL,
    pledged NUMERIC(22) NULL,
    outcome VARCHAR(50) NULL,
	backers_count INT NULL,
	country VARCHAR(50) NULL,
	currency VARCHAR(5) NULL,
	launched_date DATE NULL,
	end_date DATE NULL,
	category_id INT NOT NULL,
	subcategory_id INT NOT NULL,
    FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);




