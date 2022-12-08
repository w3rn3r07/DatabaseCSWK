CREATE DATABASE holiday;

CREATE TABLE customer (
    cust_id SERIAL NOT NULL,
    cust_fname VARCHAR(30) NOT NULL,
    cust_lname VARCHAR(30) NOT NULL,
    phone_country_code VARCHAR(3) NOT NULL,
    phone_no1 CHAR(10) NOT NULL,
    phone_no2 CHAR(10), 
    email VARCHAR(255) NOT NULL,
    no_of_travellers SMALLINT NOT NULL 
);

CREATE TABLE branch (
    branch_id SERIAL NOT NULL,
    branch_name VARCHAR(30) NOT NULL,
    branch_city VARCHAR(90) NOT NULL,
    branch_postcode VARCHAR(15) NOT NULL
);

CREATE TABLE staff(
    staff_id SERIAL NOT NULL,
    staff_fname VARCHAR(30) NOT NULL,
    staff_lname VARCHAR(30) NOT NULL,
    phone_no CHAR(10) NOT NULL,
    email VARCHAR(255) NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE role (
    role_id SERIAL NOT NULL,
    role_title VARCHAR(30) NOT NULL,
    shift_dates DATE NOT NULL,
    shift_start TIME NOT NULL,
    shift_end TIME NOT NULL
);

CREATE TABLE staff_role (
    staff_id INT NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE accomodation (
    accom_id SERIAL NOT NULL,
    accom_name VARCHAR(75) NOT NULL,
    nights_booked SMALLINT NOT NULL,
    accom_no SMALLINT NOT NULL,
    accom_city VARCHAR(90) NOT NULL,
    accom_country VARCHAR(50) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    accom_postcode VARCHAR(15) NOT NULL,
    phone_country_code VARCHAR(3) NOT NULL,
    accom_phone_no CHAR(10) NOT NULL,
    accom_description TEXT NOT NULL
);

CREATE TABLE room (
    room_id SERIAL NOT NULL,
    room_type VARCHAR(20) NOT NULL,
    floor_code CHAR(1) NOT NULL,
    room_no INT NOT NULL,
    room_facilities TEXT NOT NULL,
    extra_facilities TEXT NOT NULL,
    FOREIGN KEY (accom_id) REFERENCES accom(accom_id)
);

CREATE TABLE facility (
    facility_id SERIAL NOT NULL,
    facility_type VARCHAR(25) NOT NULL,
    facility_description TEXT NOT NULL
);

CREATE TABLE acc_fac (
    accom_id INT NOT NULL, 
    facility_id INT NOT NULL,
    FOREIGN KEY (accom_id) REFERENCES accom(accom_id)
    FOREIGN KEY (facility_id) REFERENCES facility(facility_id)
);

CREATE TABLE booking (
    booking_id SERIAL NOT NULL,
    holiday_duration(days) SMALLINT NOT NULL,
    date_of_booking DATE NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    FOREIGN KEY (cust_id) REFERENCES cust(cust_id)
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
    FOREIGN KEY (accom_id) REFERENCES accom(accom_id)
);

CREATE TABLE payment (
    payment_id SERIAL NOT NULL,
);

CREATE TABLE package (
    package_id SERIAL NOT NULL,
    package_name VARCHAR(10) NOT NULL,
    package_price DECIMAL NOT NULL,
    package_description TEXT NOT NULL
);

CREATE TABLE book_package (
    package_id INT NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (package_id) REFERENCES package(package_id)
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE car_rent (
    car_id SERIAL NOT NULL,
    car_brand VARCHAR(40) NOT NULL,
    car_model VARCHAR(100) NOT NULL,
    car_regist CHAR(7) NOT NULL,
    no_of_seats SMALLINT NOT NULL,
    no_of_bags SMALLINT NOT NULL,
    transmission_type VARCHAR(25) NOT NULL,
    fuel_type VARCHAR(10) NOT NULL,
    rent_price DECIMAL NOT NULL,
    pickup_location NOT NULL
);

CREATE TABLE car_book (
    car_id INT NOT NULL,
    booking_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE flight (
    flight_id SERIAL NOT NULL,
    arline_name VARCHAR(30) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    flight_no VARCHAR(30) NOT NULL
);

CREATE TABLE flight_book (
    booking_id INT NOT NULL,
    flight_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);
