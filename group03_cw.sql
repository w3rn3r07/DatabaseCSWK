--Creation--
    CREATE DATABASE SunnySideHoliday;

    CREATE TABLE customer (
        cust_id SERIAL PRIMARY KEY NOT NULL,
        cust_fname VARCHAR(30) NOT NULL,
        cust_lname VARCHAR(30) NOT NULL,
        sex CHAR(1) NOT NULL,
        date_of_birth DATE,
        passport_no VARCHAR(15),
        phone_no1 VARCHAR(15) NOT NULL,
        phone_no2 VARCHAR(15), 
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
        phone_no VARCHAR(15) NOT NULL,
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
        shift_date DATE NOT NULL,
        shift_start TIME NOT NULL,
        shift_end TIME NOT NULL
    );

    CREATE TABLE staff_role (
        staff_id INT NOT NULL,
        role_id INT NOT NULL,
        FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
        FOREIGN KEY (role_id) REFERENCES role(role_id)
    );

    CREATE TABLE accommodation (
        accom_id SERIAL PRIMARY KEY NOT NULL,
        accom_name VARCHAR(75) NOT NULL,
        nights_booked SMALLINT NOT NULL,
        accom_no SMALLINT NOT NULL,
        accom_city VARCHAR(90) NOT NULL,
        accom_country VARCHAR(50) NOT NULL,
        street_name VARCHAR(50) NOT NULL,
        accom_postcode CHAR(8) NOT NULL,
        accom_phone_no VARCHAR(15) NOT NULL,
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
        FOREIGN KEY (accom_id) REFERENCES accommodation(accom_id)
    );

    CREATE TABLE facility (
        facility_id SERIAL PRIMARY KEY NOT NULL,
        facility_type VARCHAR(25) NOT NULL,
        facility_description TEXT
    );

    CREATE TABLE acc_fac (
        accom_id INT NOT NULL, 
        facility_id INT NOT NULL,
        FOREIGN KEY (accom_id) REFERENCES accommodation(accom_id),
        FOREIGN KEY (facility_id) REFERENCES facility(facility_id)
    );

    CREATE TABLE flight (
        flight_id SERIAL PRIMARY KEY NOT NULL,
        airline_name VARCHAR(30) NOT NULL,
        departure_date DATE NOT NULL,
        return_date DATE NOT NULL,
        flight_no VARCHAR(30) NOT NULL
    );

    CREATE TABLE booking (
        booking_id SERIAL PRIMARY KEY NOT NULL,
        holiday_duration SMALLINT NOT NULL,
        date_of_booking DATE NOT NULL,
        booking_price DECIMAL NOT NULL,
        staff_id INT NOT NULL,
        cust_id INT NOT NULL,
        flight_id INT NOT NULL,
        accom_id INT NOT NULL,
        FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
        FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
        FOREIGN KEY (flight_id) REFERENCES flight(flight_id),
        FOREIGN KEY (accom_id) REFERENCES accommodation(accom_id)
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
        payment_amount DECIMAL NOT NULL,
        payment_type VARCHAR(15),
        booking_id INT NOT NULL, 
        FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
    );

    CREATE TABLE installment (
        installment_id SERIAL PRIMARY KEY NOT NULL,
        installment_type VARCHAR(15)
    );

    CREATE TABLE installment_pay (
        payment_id INT NOT NULL,
        installment_id INT NOT NULL,
        payment_date DATE NOT NULL,
        payment_due_date DATE NOT NULL,
        installment_number SMALLINT NOT NULL,
        max_installments SMALLINT NOT NULL,
        required_payment DECIMAL NOT NULL,
        customer_paid_amount DECIMAL NOT NULL,
        payment_status VARCHAR(15),
        FOREIGN KEY (payment_id) REFERENCES payment(payment_id),
        FOREIGN KEY (installment_id) REFERENCES installment(installment_id)
    );

    CREATE TABLE package (
        package_id SERIAL PRIMARY KEY NOT NULL,
        package_name VARCHAR(20) NOT NULL,
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
        car_phone_no VARCHAR(15) NOT NULL,
        car_brand VARCHAR(40) NOT NULL,
        car_model VARCHAR(100) NOT NULL,
        car_regist VARCHAR(10) NOT NULL,
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
        iata_code CHAR(3),
        airport_country VARCHAR(50) NOT NULL
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
    CREATE INDEX index_phone ON booking(booking_id);
 
 --INSERTION--
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Christabella', 'Castillo', 'F', '1997-08-06', 608357384,'+44 972 2728505',NULL,'ccastillo0@smugmug.com', 2, 'Molesey', 'Island Farm Road', 'KT8 2NJ');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Jacqui', 'Lyttle', 'F', '1976-04-07', 673576471,'+44 212 6510889', '+44 906 7327340','jlyttle1@yahoo.co.jp', 0, 'Aylesbury', 'Castle Street', 'HP20 1TA');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Dirk', 'Bebbell', 'M', '1977-10-15', 377441720,'+44 826 9860335',NULL,'dbebbell2@elegantthemes.com', 1, 'Neath', 'Brookfield ', 'SA10 7EG');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Camel', 'Loeber', 'M', '2001-06-20', 875228895,'+44 472 1675747',NULL,'cloeber3@eventbrite.com', 1, 'London', 'Chichester Road', 'NW6 5QP');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Worth', 'Jessup', 'M', '1985-12-29', 414403710,'+44 291 2903922', '+44 980 3246182','wjessup4@csmonitor.com', 0, 'Plymouth', 'Colebrook Lane', 'PL7 4BN');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Randi', 'Soulsby', 'M', '1999-11-18', 095388403,'+44 691 6094555', '+44 325 4591896','rsoulsby5@chronoengine.com', 2, 'Horsforth', 'Wood Lane', 'LS18 4HH');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Cammy', 'Valente', 'F', '2003-09-28', 525197294,'+44 493 3733983', NULL,'cvalente6@amazonaws.com', 2, 'Manchester', 'Orville Drive', 'M19 2JW');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Florencia', 'Penlington', 'F', '1981-06-18', 603680810,'+44 177 7703906', '+44 464 8216293','fpenlington7@hc360.com', 0, 'Leeds', 'Victoria Terrace', 'LS3 1BX');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Norri', 'Veltmann', 'M', '1992-06-21', 848074843,'+44 624 6075389', NULL,'nveltmann8@census.gov', 2, 'Bradford', 'Pollard Lane', 'BD2 4RW');
    INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) VALUES ('Chrissie', 'Dedenham', 'F', '1996-08-10', 030182850,'+44 747 6662459', '+44 950 7222486','cdedenham9@exblog.jp', 0, 'Albury', 'Farm Cottages', 'SG11 2JE');

    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Dickinson-Tillman','London', 'London Road', 'BN52 9ZP');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Swaniawski, K','Manchester', 'High Stret', 'SA12 6BD');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Littel LLC', 'Lverpool', 'Oxford Street', 'TN38 0LF');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Smitham-Wolf','Cardiff', 'Victoria Street', 'LS18 4SL');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Zulauf-Crooks','Belfast', 'Bridge Street', 'S7 1NT');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Orn LLC','Southampton', 'Clovelly Road', 'CT8 8SR');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Fisher, Ratke and Leuschke','Glasgow', 'Green Lane', 'WV11 3NA');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Klein-Moore', 'Birch Grove','Hazel Court', 'WS8 7JH');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Hickle, Braun and Waelchi','Hazel Court', 'Oak Tree Drive', 'CH7 2QW');
    INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) VALUES ('Crona and Sons','New Castle','Rosewood Close', 'B90 1SL');

    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Jone', 'Lafflina', '0747 521 5963', 'jlafflina0@wix.com', 'Southampton', 'Roberts Road', 'SO15 5DF',5);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Merrick', 'Hext', '0734 905 9785', 'mhext1@psu.edu', 'Liverpool', 'Landguard Road', 'SO15 7GD',7);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Nadean', 'Jeannet', '0797 229 2587', 'njeannet2@symantec.com', 'Glasgow', 'Alexander Road', 'EC1Q 1HJ',2);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Lindy', 'Angell', '0749 456 5348', 'langell3@meetup.com', 'London', 'Commercial Road', 'SW15 0DT',10);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Ludvig', 'Landeaux', '0360 862 0625', 'llandeaux4@samsung.com', 'Leeds', 'Derby Road','AB35 5SX',8);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Arri', 'Elsworth', '0386 120 5751', 'aelsworth5@networksolutions.com', 'Sheffield', 'Hill Lane', 'WD48 9QL',6);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Alejandra', 'Ferrettino', '0731 571 9815', 'aferrettino6@bing.com', 'Bristol', 'Howerd Road', 'SG15 6TD',4);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Beck', 'Kenen', '0798 855 1402', 'bkenen7@stanford.edu', 'Newcastle', 'London Road', 'SA44 4PH',1);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Vasili', 'Vasovic', '0325 511 6584', 'vvasovic8@cpanel.net', 'Coventry', 'Park Road', 'SK41 6NS',3);
    INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) VALUES ('Terri', 'Hurl', '0581 685 7492', 'thurl9@123-reg.co.uk', 'Nottingham', 'Grove Road','CT8 8DG',9);

    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('manager', '2022-07-14', '1:12', '6:15');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('general worker', '2022-05-15', '8:17', '16:20');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('assistant manager', '2022-10-09', '1:06', '15:41');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('marketer', '2022-07-01', '11:24', '10:24');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('Sales', '2022-08-11', '15:37', '4:58');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('accountant', '2022-07-29', '5:13', '10:34');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('business adminstrator', '2022-04-13', '12:15', '1:27');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('HR', '2022-03-15', '13:36', '9:30');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('Payment Adjustment Coordinator', '2022-04-11', '15:56', '3:25');
    INSERT INTO role (role_title, shift_date, shift_start, shift_end) VALUES ('Safety Technician', '2022-11-19', '23:07', '20:02');

    INSERT INTO staff_role (staff_id, role_id) VALUES (1, 1);
    INSERT INTO staff_role (staff_id, role_id) VALUES (2, 7);
    INSERT INTO staff_role (staff_id, role_id) VALUES (1, 9);
    INSERT INTO staff_role (staff_id, role_id) VALUES (3, 2);
    INSERT INTO staff_role (staff_id, role_id) VALUES (1, 6);
    INSERT INTO staff_role (staff_id, role_id) VALUES (3, 6);
    INSERT INTO staff_role (staff_id, role_id) VALUES (1, 2);
    INSERT INTO staff_role (staff_id, role_id) VALUES (1, 5);
    INSERT INTO staff_role (staff_id, role_id) VALUES (3, 10);
    INSERT INTO staff_role (staff_id, role_id) VALUES (2, 1);

    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('ROYAL MALEWANE', 55, 31, 'Quezon City', 'Philippines', 'Gen. Malvar', '4000', '690 669 7788', 'easy transportation access');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('SONEVA KIRI', 49, 86, 'Manila', 'Philippines', 'M F Jhocson', '110-0006', '885 972 8022', '5 star hotel near the beach');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('AMAN SVETI STEFAN', 51, 90, 'Wuhan', 'China', 'Lv Jing Yuan', '10022', '251 276 4188', 'easy transportation access');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('ROYAL MALEWANE', 9, 6, 'Khemis Miliana', 'Algeria', 'rue Belsaadi Abdelkader', 'NW1 4SB', '286 555 6796', '5 star hotel near the beach');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('SIX SENSES ZIGHY BAY', 54, 85, 'Al-shuwaikh', 'Kuwait', 'Shuwaikh Industry 32013', '10022', '229 236 6705', 'easy transportation access');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('TIME + TIDE MIAVANA', 43, 1, 'Santiago', 'Dominican Republic', 'M Tingo', 'M1 1AA', '803 351 1983', 'hotel in the heart of the city centre');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('SONEVA JANI', 48, 98, 'Alger Centre', 'Algeria', 'chemin Pouyanne', 'SW1A 1AA', '740 710 8473', '5 star hotel near the beach');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('SONEVA KIRI', 13, 95, 'Rosario', 'Argentina', 'Jose Carlos Paz', '4000', '145 424 0966', 'floating hotel');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('SONEVA KIRI', 40, 88, 'Kaduna', 'Nigeria', 'Textile Road', 'H2Y 1T9', '459 519 5398', 'hotel in the heart of the city centre');
    INSERT INTO accommodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) VALUES ('SONEVA JANI', 24, 95, 'Warszawa', 'Poland', 'Ogórkowa', 'M1 1AA', '406 551 5439', 'easy transportation access');

    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('room with a view', 'A', 15, 'in room safe', 'hair styling tools',1);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('studio rooms', 'B', 7, 'tea/coffee making facility','',1);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('room with a view', 'D', 20, 'in room safe', 'hair dryer',1);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('studio rooms', 'G', 20, 'in room safe', 'hair dryer',2);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('double bedroom', 'E', 15, 'free WI-FI', 'hair dryer',2);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('single bedroom', 'A', 3, 'minibar', 'hair dryer',3);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('double bedroom', 'D', 14, 'tea/coffee making facility', 'hair dryer',3);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('single bedroom', 'F', 13, 'free WI-FI', 'hair styling tools',4);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('single bedroom', 'A', 19, 'tea/coffee making facility', 'hair dryer',4);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('presidential room', 'E', 5, 'tea/coffee making facility', 'hair styling tools',5);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('room with a view', 'D', 45, 'Stylish bath amenities', 'hair dryer',5);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('single bedroom', 'F', 99, 'free WI-FI', 'hair styling tools',6);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('double bedroom', 'A', 71, 'tea/coffee making facility, free WI-FI', 'hair dryer',6);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('presidential room', 'C', 56, 'In-room mini-refrigerator', 'hair styling tools',7);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'C', 35, 'Kitchen facilities', 'Towels',7);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'A', 1, 'In-room mini-refrigerator', 'hair styling tools',8);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'B', 15, 'TV with cable', 'Hair Dryer',8);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'B', 9, 'In-room mini-refrigerator', 'hair styling tools',9);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'E', 133, 'free WI-FI', 'hair styling tools',9);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'D', 15, 'free WI-FI', 'hair styling tools',10);
    INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) VALUES ('master bedroom', 'D', 17, 'free WI-FI', 'hair styling tools',10);

    INSERT INTO facility (facility_type, facility_description) VALUES ('gym', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('free parking', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('restaurant', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('pool', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('cafe', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('spa', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('bar', 'all facilities open 24/7 except the pool.');
    INSERT INTO facility (facility_type, facility_description) VALUES ('cinema room', 'all facilities open 24/7 except the pool.');

    INSERT INTO acc_fac (accom_id, facility_id) VALUES (1, 2);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (1, 5);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (2, 8);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (2, 2);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (3, 3);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (3, 6);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (4, 4);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (4, 7);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (5, 8);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (5, 2);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (6, 3);
    INSERT INTO acc_fac (accom_id, facility_id) VALUES (6, 8);

    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Qatar Airways', '2022-01-02', '2022-03-07', 'EY234');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Regional Express', '2022-02-14', '2022-04-14', 'AA8670');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Rossiya - Russian Airlines', '2022-03-27', '2022-05-27', 'QT1285');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Royal Air Maroc', '2022-03-28', '2022-05-13', 'QT1285');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Royal Brunei', '2022-04-18', '2022-06-08', 'GF4857');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Royal Jordanian', '2022-04-18', '2022-06-03', 'QT1285');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Ryanair', '2022-05-23', '2022-05-26', 'AA8670');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('S7 Airlines', '2022-06-18', '2022-07-29', 'BD8675');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('Egyptair', '2022-06-28', '2022-08-05', 'GF4857');
    INSERT INTO flight (airline_name, departure_date, return_date, flight_no) VALUES ('easyJet', '2022-08-11', '2022-08-15', 'GF4857');

    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (46, '2021-12-06 11:36:37',2650, 1, 1, 1, 1);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (53, '2022-01-25 15:25:08',9564, 3, 2, 5, 10);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (54, '2022-01-29 01:59:50',7635, 1, 3, 4, 9);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (36, '2022-02-04 20:26:09',7634, 1, 4, 3, 6);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (47, '2022-03-21 13:02:09',8745, 2, 5, 8, 8);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (39, '2022-03-24 01:26:14',5433, 3, 6, 7, 5);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (3, '2022-04-19 06:52:05',1264, 2, 7, 6, 3);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (36, '2022-05-05 15:37:20',7655, 3, 8, 1, 2);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (7, '2022-06-14 14:54:49',1827, 2, 9, 9, 4);
    INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) VALUES (4, '2022-07-09 11:19:17', 335, 4, 10, 9, 7);

    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Holli', 'Mancer', 'F', '1972-10-11', '4115381JA', 'Miramichi', 'Downing Street', 'RM5 3XH',1);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Cesare', 'Frazier', 'M', '1984-08-04', '1241125LH', 'Roissy Charles-de-Gaulle', 'Baker Street', 'TA15 6UT',1 );
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Mina', 'Brierley', 'F', '1975-09-02', '8268048MA', 'Malikisi', 'Bond Street','CM14 4LL', 3);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Olivier', 'Evanson', 'M', '1994-06-18', '4115381JA', 'Rudnogorsk', 'Oxford Street', 'NG33 5QP', 4);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Paulie', 'Colombier', 'M', '1966-03-10', '1241125LH', 'Czchów', 'Piccadilly', 'FK20 8RN', 6);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Neile', 'Wildish', 'F', '1986-02-24', '6993459TH', 'Ejidal', 'Regent Street', 'PA76 6SJ', 6);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Fielding', 'Mumbray', 'M', '1968-06-05', '4835734QA', 'Meijiahe', 'Park Lane','DL12 9SA', 7);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Nat', 'Chatin', 'M', '1994-05-08', '7141506RA', 'Karangkeng', 'Great Russel Street','CF83 1EA', 7);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Con', 'Gogarty', 'M', '1977-10-25', '4115381JA', 'Radekhiv', 'Fleet Street', 'L11 3EF', 9);
    INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) VALUES ('Milo', 'Langlands', 'M', '1970-07-08', '4835734QA', 'Cimenga', 'The Strand','S3 8HT', 9);

    INSERT INTO package (package_name, package_price, package_description) VALUES ('silver package', 1615, '2 nights in a 5 star hotel in italy(flights included)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('pemium package', 4429, '7 nights in japan(hotel and flight inluded)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('gold package', 1814, '7 nights in japan(hotel and flight inluded)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('gold package', 3191, '2 nights in a 5 star hotel in italy(flights included)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('silver package', 1180, '7 nights in japan(hotel and flight inluded)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('gold package', 1092, '3 nights in egypt(5 star hotel + flights inluded)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('gold package', 1419, '2 nights in a 5 star hotel in italy(flights included)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('silver package', 2360, '3 nights in egypt(5 star hotel + flights inluded)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('gold package', 1245, '2 nights in a 5 star hotel in italy(flights included)');
    INSERT INTO package (package_name, package_price, package_description) VALUES ('gold package', 1534, '3 nights in egypt(5 star hotel + flights inluded)');

    INSERT INTO book_package (package_id, booking_id) VALUES (9, 9);
    INSERT INTO book_package (package_id, booking_id) VALUES (7, 4);
    INSERT INTO book_package (package_id, booking_id) VALUES (5, 8);
    INSERT INTO book_package (package_id, booking_id) VALUES (10, 2);
    INSERT INTO book_package (package_id, booking_id) VALUES (2, 5);
    INSERT INTO book_package (package_id, booking_id) VALUES (3, 6);
    INSERT INTO book_package (package_id, booking_id) VALUES (8, 3);
    INSERT INTO book_package (package_id, booking_id) VALUES (7, 7);
    INSERT INTO book_package (package_id, booking_id) VALUES (10, 10);
    INSERT INTO book_package (package_id, booking_id) VALUES (4, 1);

    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+4306935893571','Chevrolet', 'Tahoe', '', 6, 2, 'manual', 'petrol', 115, 'Brazil', 'Piritiba', 'High Street', '44830-000');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+18332405104','Volvo', 'V70', 'GH76SKL', 2, 4, 'manual', 'petrol', 84, 'Peru', 'Huarancante', 'Main Street', '37847');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+4915503173420','Toyota', 'Prius', 'GH76SKL', 2, 2, 'automatic', 'diesel', 107, 'Poland', 'Bieniewice', 'Station Road', '05-870');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+33644621315','Toyota', 'Land Cruiser', 'JF76GVH', 7, 5, 'manual', 'petrol', 124, 'Armenia', 'Byuravan', 'London Road','NG33 5RR');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+912086213307','Hyundai', 'Tiburon', 'HG76HJI', 7, 3, 'semi-auto', 'hybrid', 71, 'China', 'Zhangxiang', 'Park Road','83974');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+18447859654','Oldsmobile', 'Aurora', 'ST35HFJ', 7, 1, 'automatic', 'hybrid', 99, 'Russia', 'Nakhabino', 'Victoria Road', '433532');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+3197010517282','Mitsubishi', 'Montero', 'JF76GVH', 5, 4, 'manual', 'hybrid', 125, 'Croatia', 'Žrnovo', '1st Street', '20275');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+46731291534','Volkswagen', 'Jetta III', '', 5, 3, 'manual', 'petrol', 101, 'Sweden', 'Solna', '4th Street', '170 66');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+821055538203','Chevrolet', 'Camaro', 'JHHFYUV8', 2, 4, 'semi-auto', 'hybrid', 84, 'Indonesia', 'Roger Drive', 'Main','38483GH');
    INSERT INTO car_rent (car_phone_no, car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) VALUES ('+447458196482','Mitsubishi', 'RVR', 'HGJH878', 2, 3, 'semi-auto', 'hybrid', 72, 'Canada', 'Nanton', 'Susan Lane', 'L5M');

    INSERT INTO car_book (car_id, booking_id) VALUES (10, 8);
    INSERT INTO car_book (car_id, booking_id) VALUES (4, 10);
    INSERT INTO car_book (car_id, booking_id) VALUES (4, 3);
    INSERT INTO car_book (car_id, booking_id) VALUES (3, 6);
    INSERT INTO car_book (car_id, booking_id) VALUES (1, 7);
    INSERT INTO car_book (car_id, booking_id) VALUES (9, 6);
    INSERT INTO car_book (car_id, booking_id) VALUES (8, 10);
    INSERT INTO car_book (car_id, booking_id) VALUES (10, 1);
    INSERT INTO car_book (car_id, booking_id) VALUES (7, 8);
    INSERT INTO car_book (car_id, booking_id) VALUES (2, 7);

    INSERT INTO flight_book (flight_id, booking_id) VALUES (6, 9);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (1, 8);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (9, 4);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (3, 3);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (6, 6);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (5, 1);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (3, 8);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (8, 8);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (9, 5);
    INSERT INTO flight_book (flight_id, booking_id) VALUES (9, 3);

    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Ninoy Aquino International Airport', 'MNL','Philippines');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Stockholm Arlanda Airport', 'ARN','Sweden');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Punta Cana International Airport', 'PUJ','Dominican Republic');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Nnamdi Azikiwe International Airport', 'ABV','Nigeria');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Warsaw Chopin Airport', 'WAW','Poland');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Beijing Capital International Airport', 'PEK','China');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Kuwait International Airport', 'KWI','Kuwait');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Ezeiza International Airport', 'EZE','Argentina');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Algiers International Airport', 'ALG','Algeria');
    INSERT INTO airport (airport_name, iata_code, airport_country) VALUES ('Douala International Airport', 'DLA','Cameroon');

    INSERT INTO flight_airport (flight_id, airport_id) VALUES (1, 1);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (2, 2);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (3, 3);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (4, 4);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (5, 5);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (6, 6);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (7, 7);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (8, 8);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (9, 9);
    INSERT INTO flight_airport (flight_id, airport_id) VALUES (10, 10);

    INSERT INTO cabin_class (class_name) VALUES ('first class');
    INSERT INTO cabin_class (class_name) VALUES ('economy');
    INSERT INTO cabin_class (class_name) VALUES ('business class');
    INSERT INTO cabin_class (class_name) VALUES ('premium economy');

    INSERT INTO flight_class (flight_id, class_id) VALUES (6, 1);
    INSERT INTO flight_class (flight_id, class_id) VALUES (5, 2);
    INSERT INTO flight_class (flight_id, class_id) VALUES (6, 2);
    INSERT INTO flight_class (flight_id, class_id) VALUES (2, 2);
    INSERT INTO flight_class (flight_id, class_id) VALUES (4, 1);
    INSERT INTO flight_class (flight_id, class_id) VALUES (4, 4);
    INSERT INTO flight_class (flight_id, class_id) VALUES (3, 4);
    INSERT INTO flight_class (flight_id, class_id) VALUES (3, 2);
    INSERT INTO flight_class (flight_id, class_id) VALUES (3, 1);
    INSERT INTO flight_class (flight_id, class_id) VALUES (4, 4);

    INSERT INTO payment (payment_amount, payment_type, booking_id) values (2070, 'VISA', 1);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (7804, 'MASTERCARD', 2);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (6580, 'APPLEP-AY', 5);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (652, 'GOOGLE-PAY', 8);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (8830, 'VISA', 3);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (1500, 'MASTERCARD', 4);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (6699, 'VISA', 10);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (1482, 'VISA', 9);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (4585, 'MASTERCARD', 7);
    INSERT INTO payment (payment_amount, payment_type, booking_id) values (9529, 'APPLE-PAY', 6);

    INSERT INTO installment (installment_type) values ('3 months');
    INSERT INTO installment (installment_type) values ('6 month');
    INSERT INTO installment (installment_type) values ('9 month');
    INSERT INTO installment (installment_type) values ('12 month');
    INSERT INTO installment (installment_type) values ('4 month');
    INSERT INTO installment (installment_type) values ('3 months');
    INSERT INTO installment (installment_type) values ('6 month');
    INSERT INTO installment (installment_type) values ('9 month');
    INSERT INTO installment (installment_type) values ('12 month');
    INSERT INTO installment (installment_type) values ('Pay Full');

    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (9, 10, '2022-10-20', '2022-11-08', 2, 3, 169, 189, 'PAID FULL');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (7, 5, '2022-10-12', '2023-01-08', 4, 6, 150, 150, 'PAID INSTALMENT');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (10, 10, '2022-09-28', '2023-02-14', 6, 9, 186, 153, 'PAID FULL');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (2, 1, '2022-11-04', '2022-08-09', 8, 12, 167, 155, 'PAID INSTALMENT');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (9, 1, '2022-10-16', '2023-02-11', 2, 4, 160, 159, 'PAID FULL');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (8, 4, '2022-09-27', '2022-10-16', 3, 3, 171, 192, 'PAID INSTALMENT');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (4, 5, '2022-11-02', '2022-10-14', 4, 6, 197, 186, 'PAID FULL');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (2, 3, '2022-08-30', '2023-02-09', 3, 9, 181, 166, 'PAID INSTALMENT');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (8, 3, '2022-12-03', '2022-08-22', 3, 12, 169, 151, 'PAID FULL');
    INSERT INTO installment_pay (payment_id, installment_id, payment_date, payment_due_date,  installment_number, max_installments, required_payment, customer_paid_amount, payment_status) values (1, 5, '2022-06-03', '2023-02-08', 1, 1, 186, 154, 'PAID INSTALMENT');

--QUERIES

    --Q1) Find out the first name, last name, the number of travellers of the customer travelling to Kuwait along with their Booking ID?
    SELECT  booking.booking_id AS "Booking ID",
    cust_fname AS "Customer First Name",
    cust_lname AS "Customer Last Name",
    no_of_travellers AS "Number of Travellers" FROM customer
    JOIN booking USING (cust_id)
    JOIN accommodation USING (accom_id)
    WHERE accom_country = 'Kuwait'
    ORDER BY cust_lname;

    --Q2) Find which customer is staying at which accommodation
    SELECT cust_fname AS "Customer First Name", 
    cust_lname "Customer Last Name",
    accom_name "Accommodation Name" FROM customer
    JOIN booking USING (cust_id)
    JOIN accommodation USING (accom_id)
    ORDER BY cust_lname;

    --Q3)How many people have made bookings between “2021-12-01” and "2022-04-30”?
    SELECT COUNT(booking_id) AS "Number of Bookings" 
    FROM booking 
    WHERE date_of_booking BETWEEN '2021-12-01' AND '2022-04-30';

    --Q4)Find the first name, last name, gender and date of birth of travellers travelling with ‘Norri Veltmann’.
    SELECT CONCAT(cust_fname,' ',cust_lname) AS "Customer Name",
    traveller_fname AS "Traveller First Name",
    traveller_lname AS "Traveller Last Name",
    traveller.sex AS "Gender",
    traveller.date_of_birth AS "Date of Birth" 
    FROM customer
    JOIN booking USING (cust_id)
    JOIN traveller USING (booking_id)
    WHERE cust_fname = 'Norri' AND cust_lname = 'Veltmann';

    -- Q5) Find out if the customer named “Florencia Penlington ” has paid or not. Get their number, email and payment amount so you can contact them.
    SELECT CONCAT(cust_fname,' ',cust_lname) AS "Customer Name",
    CONCAT(customer.phone_no1,'OR',customer.phone_no2) AS "Customer Phone Number(s)",
    customer.email AS "Customer Email",
    CONCAT('£',payment_amount) AS "Payment Amount",
    installment_pay.payment_status AS "Payment Status"
    FROM customer
    JOIN booking USING (cust_id)
    JOIN payment USING (booking_id)
    JOIN installment_pay USING (payment_id)
    WHERE cust_fname ILIKE 'Florencia' AND cust_lname ILIKE 'Penlington';
