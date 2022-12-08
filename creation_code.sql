CREATE DATABASE holiday;

CREATE TABLE customer (
    cust_id,
    cust_fname,
    phone_country_code,
    phone_no1,
    phone_no2,
    email
    no_of_travellers
);

CREATE TABLE branch (
    branch_id
    branch_name
    branch_city
    branch_postcode
);

CREATE TABLE staff(
    staff_id,
    staff_fname,
    staff_lname,
    phone_no,
    email,
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);
