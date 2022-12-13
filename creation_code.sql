--Creation
CREATE DATABASE holiday;

CREATE TABLE customer (
    cust_id SERIAL PRIMARY KEY NOT NULL,
    cust_fname VARCHAR(30) NOT NULL,
    cust_lname VARCHAR(30) NOT NULL,
    sex CHAR(1) NOT NULL,
    date_of_birth DATE,
    passport_no VARCHAR(15),
    phone_no1 CHAR(11) NOT NULL,
    phone_no2 CHAR(11), 
    email VARCHAR(255) NOT NULL,
    no_of_travellers SMALLINT NOT NULL,
    cust_city VARCHAR(90) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    cust_postcode CHAR(8) NOT NULL 
);

CREATE TABLE branch (
    branch_id SERIAL PRIMARY KEY NOT NULL,
    branch_name VARCHAR(30) NOT NULL,
    branch_city VARCHAR(90) NOT NULL,
    branch_street VARCHAR(50) NOT NULL,
    branch_postcode CHAR(8) NOT NULL
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY NOT NULL,
    staff_fname VARCHAR(30) NOT NULL,
    staff_lname VARCHAR(30) NOT NULL,
    phone_no CHAR(10) NOT NULL,
    email VARCHAR(255) NOT NULL,
    staff_city VARCHAR(90) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    staff_postcode CHAR(8) NOT NULL,
    branch_id INT NOT NULL,  
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE role (
    role_id SERIAL PRIMARY KEY NOT NULL,
    role_title VARCHAR(30) NOT NULL,
    shift_dates DATE NOT NULL,
    shift_start TIME NOT NULL,
    shift_end TIME NOT NULL
);

CREATE TABLE staff_role (
    staff_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE accomodation (
    accom_id SERIAL PRIMARY KEY NOT NULL,
    accom_name VARCHAR(75) NOT NULL,
    nights_booked SMALLINT NOT NULL,
    accom_no SMALLINT NOT NULL,
    accom_city VARCHAR(90) NOT NULL,
    accom_country VARCHAR(50) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    accom_postcode CHAR(8) NOT NULL,
    phone_country_code VARCHAR(3) NOT NULL,
    accom_phone_no CHAR(11) NOT NULL,
    accom_description TEXT
);

CREATE TABLE room (
    room_id SERIAL PRIMARY KEY NOT NULL,
    room_type VARCHAR(20) NOT NULL,
    floor_code CHAR(1) NOT NULL,
    room_no INT NOT NULL,
    room_facilities TEXT NOT NULL,
    extra_facilities TEXT,
    accom_id INT NOT NULL,
    FOREIGN KEY (accom_id) REFERENCES accomodation(accom_id)
);

CREATE TABLE facility (
    facility_id SERIAL PRIMARY KEY NOT NULL,
    facility_type VARCHAR(25) NOT NULL,
    facility_description TEXT
);

CREATE TABLE acc_fac (
    accom_id INT NOT NULL, 
    facility_id INT NOT NULL,
    FOREIGN KEY (accom_id) REFERENCES accomodation(accom_id),
    FOREIGN KEY (facility_id) REFERENCES facility(facility_id)
);

CREATE TABLE flight (
    flight_id SERIAL PRIMARY KEY NOT NULL,
    arline_name VARCHAR(30) NOT NULL,
    departure_timestamp TIMESTAMP NOT NULL,
    arrival_timestamp TIMESTAMP NOT NULL,
    flight_no VARCHAR(30) NOT NULL
);

CREATE TABLE booking (
    booking_id SERIAL PRIMARY KEY NOT NULL,
    holiday_duration SMALLINT NOT NULL,
    date_of_booking DATE NOT NULL,
    staff_id INT NOT NULL,
    cust_id INT NOT NULL,
    flight_id INT NOT NULL,
    accom_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id),
    FOREIGN KEY (accom_id) REFERENCES accomodation(accom_id)
);

CREATE TABLE traveller (
    traveller_id SERIAL PRIMARY KEY NOT NULL,
    traveller_fname VARCHAR(30) NOT NULL,
    traveller_lname VARCHAR(30) NOT NULL,
    sex CHAR(1) NOT NULL,
    date_of_birth DATE NOT NULL,
    passport_no VARCHAR(15),
    traveller_city VARCHAR(90) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    traveller_postcode CHAR(8) NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY NOT NULL,
);

CREATE TABLE package (
    package_id SERIAL PRIMARY KEY NOT NULL,
    package_name VARCHAR(10) NOT NULL,
    package_price DECIMAL NOT NULL,
    package_description TEXT NOT NULL
);

CREATE TABLE book_package (
    package_id INT NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (package_id) REFERENCES package(package_id),
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE car_rent (
    car_id SERIAL PRIMARY KEY NOT NULL,
    car_brand VARCHAR(40) NOT NULL,
    car_model VARCHAR(100) NOT NULL,
    car_regist CHAR(7) NOT NULL,
    no_of_seats SMALLINT NOT NULL,
    no_of_bags SMALLINT NOT NULL,
    transmission_type VARCHAR(25) NOT NULL,
    fuel_type VARCHAR(10) NOT NULL,
    rent_price DECIMAL NOT NULL,
    car_country VARCHAR(50) NOT NULL,
    car_city VARCHAR(90) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    car_postcode VARCHAR(15) NOT NULL
);

CREATE TABLE car_book (
    car_id INT NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car_rent(car_id),
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE flight_book (
    booking_id INT NOT NULL,
    flight_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

CREATE TABLE airport (
    airport_id SERIAL PRIMARY KEY NOT NULL,
    airport_name VARCHAR(50) NOT NULL,
    iata_code CHAR(3)
);

CREATE TABLE flight_airport (
    flight_id INT NOT NULL,
    airport_id INT NOT NULL,
    FOREIGN KEY (airport_id) REFERENCES airport(airport_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

CREATE TABLE cabin_class (
    class_id SERIAL PRIMARY KEY NOT NULL,
    class_name VARCHAR(20) NOT NULL
);

CREATE TABLE flight_class (
    flight_id INT NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES cabin_class(class_id),
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);

--Insertion


INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Christabella', 'Castillo', 'ccastillo0@smugmug.com', '3', 'Molesey', 'Island Farm Road', 'KT8 2NJ');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Jacqui', 'Lyttle', 'jlyttle1@yahoo.co.jp', '0', 'Aylesbury', 'Castle Street', 'HP20 1TA');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Dirk', 'Bebbell', 'dbebbell2@elegantthemes.com', '1', 'Neath', 'Brookfield ', 'SA10 7EG');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Camel', 'Loeber', 'cloeber3@eventbrite.com', '1', 'London', 'Chichester Road', 'NW6 5QP');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Worth', 'Jessup', 'wjessup4@csmonitor.com', '0', 'Plymouth', 'Colebrook Lane', 'PL7 4BN');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Randi', 'Soulsby', 'rsoulsby5@chronoengine.com', '2', 'Horsforth', 'Wood Lane', 'LS18 4HH');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Cammy', 'Valente', 'cvalente6@amazonaws.com', '2', 'Manchester', 'Orville Drive', 'M19 2JW');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Florencia', 'Penlington', 'fpenlington7@hc360.com', '0', 'Leeds', 'Victoria Terrace', 'LS3 1BX');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Norri', 'Veltmann', 'nveltmann8@census.gov', '3', 'Bradford', 'Pollard Lane', 'BD2 4RW');
INSERT INTO customer (cust_fname, cust_lname, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Chrissie', 'Dedenham', 'cdedenham9@exblog.jp', '0', 'Albury', 'Farm Cottages', 'SG11 2JE');
