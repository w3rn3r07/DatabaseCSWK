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

CREATE TABLE role (
    role_id,
    role_title,
    shift_time
);

CREATE TABLE staff_role (
    staff_id,
    role_id,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE accomodation (
    accom_id,
    accom_name,
    nights_booked,
    accom_no,
    accom_city,
    accom_country,
    street_name,
    accom_postcode,
    phone_country_code,
    accom_phone_no,
    accom_description
);

CREATE TABLE room (
    room_id,
    room_type,
    floor_code,
    room_no,
    room_facilities,
    extra_facilities,
    FOREIGN KEY (accom_id) REFERENCES accom(accom_id)
);

CREATE TABLE facility (
    facility_id,
    facility_type,
    facility_description
);

CREATE TABLE acc_fac (
    accom_id 
    facility_id
    FOREIGN KEY (accom_id) REFERENCES accom(accom_id)
    FOREIGN KEY (facility_id) REFERENCES facility(facility_id)
);

CREATE TABLE booking (
    booking_id,
    holiday_duration(days),
    date_of_booking,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    FOREIGN KEY (cust_id) REFERENCES cust(cust_id)
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
    FOREIGN KEY (accom_id) REFERENCES accom(accom_id)
);

CREATE TABLE payment (
    payment_id,
);

CREATE TABLE package (
    package_id,
    package_name,
    package_price,
    package_description
);

CREATE TABLE book_package (
    package_id,
    booking_id,
    FOREIGN KEY (package_id) REFERENCES package(package_id)
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE car_rent (
    car_id,
    car_brand,
    car_model,
    car_regist,
    no_of_seats,
    no_of_bags,
    transmission_type,
    fuel_type,
    rent_price,
    pickup_location
);

CREATE TABLE car_book (
    car_id,
    booking_id,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE car_rent (
    flight_id,
    arline_name,
    departure_time,
    arrival_time,
    flight_no
);

CREATE TABLE flight_book (
    booking_id,
    flight_id,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id)
);
