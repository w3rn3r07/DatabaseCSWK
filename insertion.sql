hello my name is gustav
--Insertion
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Christabella', 'Castillo', F, '1997-08-06', 608357384,'+44 972 2728505',NULL,'ccastillo0@smugmug.com', 2, 'Molesey', 'Island Farm Road', 'KT8 2NJ');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Jacqui', 'Lyttle', F, '1976-04-07', 673576471,'+44 212 6510889', '+44 906 7327340','jlyttle1@yahoo.co.jp', 0, 'Aylesbury', 'Castle Street', 'HP20 1TA');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Dirk', 'Bebbell', M, '1977-10-15', 377441720,'+44 826 9860335',NULL,'dbebbell2@elegantthemes.com', 1, 'Neath', 'Brookfield ', 'SA10 7EG');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Camel', 'Loeber', M, '2001-06-20', 875228895,'+44 472 1675747',NULL,'cloeber3@eventbrite.com', 1, 'London', 'Chichester Road', 'NW6 5QP');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Worth', 'Jessup', M, '1985-12-29', 414403710,'+44 291 2903922', '+44 980 3246182','wjessup4@csmonitor.com', 0, 'Plymouth', 'Colebrook Lane', 'PL7 4BN');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Randi', 'Soulsby', M, '1999-11-18', 095388403,'+44 691 6094555', '+44 325 4591896','rsoulsby5@chronoengine.com', 2, 'Horsforth', 'Wood Lane', 'LS18 4HH');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Cammy', 'Valente', F, '2003-09-28', 525197294,'+44 493 3733983', NULL,'cvalente6@amazonaws.com', 2, 'Manchester', 'Orville Drive', 'M19 2JW');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Florencia', 'Penlington', F, '1981-06-18', 603680810,'+44 177 7703906', '+44 464 8216293','fpenlington7@hc360.com', 0, 'Leeds', 'Victoria Terrace', 'LS3 1BX');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Norri', 'Veltmann', M, '1992-06-21', 848074843,'+44 624 6075389', NULL,'nveltmann8@census.gov', 2, 'Bradford', 'Pollard Lane', 'BD2 4RW');
INSERT INTO customer (cust_fname, cust_lname, sex, date_of_birth, passport_no, phone_no1, phone_no2, email, no_of_travellers, cust_city, street_name, cust_postcode) values ('Chrissie', 'Dedenham', F, '1996-08-10', 030182850,'+44 747 6662459', '+44 950 7222486','cdedenham9@exblog.jp', 0, 'Albury', 'Farm Cottages', 'SG11 2JE');
--branch
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Dickinson-Tillman','London', 'London Road', 'BN52 9ZP');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Swaniawski, K','Manchester', 'High Stret', 'SA12 6BD');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Littel LLC', 'Lverpool', 'Oxford Street', 'TN38 0LF');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Smitham-Wolf','Cardiff', 'Victoria Street', 'LS18 4SL');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Zulauf-Crooks','Belfast', 'Bridge Street', 'S7 1NT');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Orn LLC','Southampton', 'Clovelly Road', 'CT8 8SR');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Fisher, Ratke and Leuschke','Glasgow', 'Green Lane', 'WV11 3NA');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Klein-Moore', 'Birch Grove','Hazel Court', 'WS8 7JH');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Hickle, Braun and Waelchi','Hazel Court', 'Oak Tree Drive', 'CH7 2QW');
INSERT INTO branch (branch_name, branch_city, branch_street, branch_postcode) values ('Crona and Sons','New Castle','Rosewood Close', 'B90 1SL');

--staff
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Jone', 'Lafflina', '0747 521 5963', 'jlafflina0@wix.com', 'Southampton', 'Roberts Road', 'SO15 5DF',5);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Merrick', 'Hext', '0734 905 9785', 'mhext1@psu.edu', 'Liverpool', 'Landguard Road', 'SO15 7GD',7);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Nadean', 'Jeannet', '0797 229 2587', 'njeannet2@symantec.com', 'Glasgow', 'Alexander Road', 'EC1Q 1HJ',2);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Lindy', 'Angell', '0749 456 5348', 'langell3@meetup.com', 'London', 'Commercial Road', 'SW15 0DT',10);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Ludvig', 'Landeaux', '0360 862 0625', 'llandeaux4@samsung.com', 'Leeds', 'Derby Road','AB35 5SX',8);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Arri', 'Elsworth', '0386 120 5751', 'aelsworth5@networksolutions.com', 'Sheffield', 'Hill Lane', 'WD48 9QL',6);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Alejandra', 'Ferrettino', '0731 571 9815', 'aferrettino6@bing.com', 'Bristol', 'Howerd Road', 'SG15 6TD',4);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Beck', 'Kenen', '0798 855 1402', 'bkenen7@stanford.edu', 'Newcastle', 'London Road', 'SA44 4PH',1);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Vasili', 'Vasovic', '0325 511 6584', 'vvasovic8@cpanel.net', 'Coventry', 'Park Road', 'SK41 6NS',3);
INSERT INTO staff (staff_fname, staff_lname, phone_no, email, staff_city, street_name, staff_postcode,branch_id) values ('Terri', 'Hurl', '0581 685 7492', 'thurl9@123-reg.co.uk', 'Nottingham', 'Grove Road','CT8 8DG',9);
--role
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('manager', '14-07-2022', '1:12', '6:15');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('general worker', '15-05-2022', '8:17', '16:20');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('assistant manager', '09-10-2022', '1:06', '15:41');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('marketer', '01-07-2022', '11:24', '10:24');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('Sales', '11-08-2022', '15:37', '4:58');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('accountant', '29-07-2022', '5:13', '10:34');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('business adminstrator', '13-04-2022', '12:15', '1:27');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('HR', '15-03-2022', '13:36', '9:30');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('Payment Adjustment Coordinator', '11-04-2022', '15:56', '3:25');
INSERT INTO role (role_title, shift_dates, shift_start, shift_end) values ('Safety Technician', '19-11-2022', '23:07', '20:02');
--staff_role
insert into staff_role (staff_id, role_id) values (1, 1);
insert into staff_role (staff_id, role_id) values (2, 7);
insert into staff_role (staff_id, role_id) values (1, 9);
insert into staff_role (staff_id, role_id) values (3, 2);
insert into staff_role (staff_id, role_id) values (1, 6);
insert into staff_role (staff_id, role_id) values (3, 6);
insert into staff_role (staff_id, role_id) values (1, 2);
insert into staff_role (staff_id, role_id) values (1, 5);
insert into staff_role (staff_id, role_id) values (3, 10);
insert into staff_role (staff_id, role_id) values (2, 1);
--accomodation
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('ROYAL MALEWANE', 55, 31, 'San Agustin', 'Philippines', 'Via Veneto', '4000', '690 669 7788', 'easy transportation access');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('SONEVA KIRI', 49, 86, 'Farsta', 'Sweden', 'Via Veneto', '110-0006', '885 972 8022', '5 star hotel near the beach');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('AMAN SVETI STEFAN', 51, 90, 'Sabana Grande de Boyá', 'Dominican Republic', 'Park Avenue', '10022', '251 276 4188', 'easy transportation access');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('ROYAL MALEWANE', 9, 6, 'Damasak', 'Nigeria', 'Main Street', 'NW1 4SB', '286 555 6796', '5 star hotel near the beach');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('SIX SENSES ZIGHY BAY', 54, 85, 'Jedlina-Zdrój', 'Poland', 'Park Avenue', '10022', '229 236 6705', 'easy transportation access');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('TIME + TIDE MIAVANA', 43, 1, 'Bijie', 'China', 'Main Street', 'M1 1AA', '803 351 1983', 'hotel in the heart of the city centre');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('SONEVA JANI', 48, 98, 'Al Faḩāḩīl', 'Kuwait', 'Via Veneto', 'SW1A 1AA', '740 710 8473', '5 star hotel near the beach');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('SONEVA KIRI', 13, 95, 'Xingyuan', 'China', 'Champs-Élysées', '4000', '145 424 0966', 'floating hotel');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('SONEVA KIRI', 40, 88, 'Nieborów', 'Poland', 'La Rambla', 'H2Y 1T9', '459 519 5398', 'hotel in the heart of the city centre');
insert into accomodation (accom_name, nights_booked, accom_no, accom_city, accom_country, street_name, accom_postcode, accom_phone_no, accom_description) values ('SONEVA JANI', 24, 95, 'Pozo Hondo', 'Argentina', 'Main Street', 'M1 1AA', '406 551 5439', 'easy transportation access');

--room
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('room with a view', 'A', 15, 'in room safe', 'hair styling tools',8);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('studio rooms', 'B', 7, 'tea/coffee making facility','',9);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('room with a view', 'D', 20, 'in room safe', 'hair dryer',7);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('studio rooms', 'G', 20, 'in room safe', 'hair dryer',10);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('double bedroom', 'E', 15, 'free WI-FI', 'hair dryer',6);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('single bedroom', 'A', 3, 'minibar', 'hair dryer',1);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('double bedroom', 'D', 14, 'tea/coffee making facility', 'hair dryer',3);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('single bedroom', 'F', 13, 'free WI-FI', 'hair styling tools',5);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('single bedroom', 'A', 19, 'tea/coffee making facility', 'hair dryer',2);
INSERT INTO room (room_type, floor_code, room_no, room_facilities, extra_facilities,accom_id) values ('presidential room', 'E', 5, 'tea/coffee making facility', 'hair styling tools',1);
--facility
INSERT INTO facility (facility_type, facility_description) values ('gym', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('gym', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('restaurant', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('pool', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('cafe.', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('restaurant', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('cafe.', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('pool', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('gym', 'all facilities open 24/7 except the pool.');
INSERT INTO facility (facility_type, facility_description) values ('pool', 'all facilities open 24/7 except the pool.');
--acc_fac
insert into acc_fac (accom_id, facility_id) values (3, 2);
insert into acc_fac (accom_id, facility_id) values (8, 5);
insert into acc_fac (accom_id, facility_id) values (9, 10);
insert into acc_fac (accom_id, facility_id) values (2, 2);
insert into acc_fac (accom_id, facility_id) values (5, 3);
insert into acc_fac (accom_id, facility_id) values (4, 6);
insert into acc_fac (accom_id, facility_id) values (5, 4);
insert into acc_fac (accom_id, facility_id) values (4, 7);
insert into acc_fac (accom_id, facility_id) values (6, 8);
insert into acc_fac (accom_id, facility_id) values (9, 2);
--flight
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Sibisa Airport', '07-09-2022', '02-01-2022', 'EY234');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Kenitra Airport', '14-02-2022', '13-09-2022', 'AA8670');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Chena Hot Springs Airport', '27-11-2022', '08-03-2022', 'QT1285');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Vilyuisk Airport', '07-09-2022', '23-12-2021', 'QT1285');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Süleyman Demirel International Airport', '18-09-2022', '08-05-2022', 'GF4857');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Mafia Island Airport', '18-02-2022', '24-09-2022', 'QT1285');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Nagasaki Airport', '23-10-2022', '11-04-2022', 'AA8670');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Karshi Khanabad Airport', '18-04-2022', '29-07-2022', 'BD8675');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('New Plymouth Airport', '28-12-2021', '27-09-2022', 'GF4857');
INSERT INTO flight (airline_name, departure_timestamp, arrival_timestamp, flight_no) values ('Hornepayne Municipal Airport', '11-11-2022', '10-03-2022', 'GF4857');
--booking
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (46, '2022-03-06 11:36:37',2650, 1, 3, 1, 7);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (53, '2022-07-25 15:25:08',9564, 3, 8, 5, 10);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (54, '2022-08-23 01:59:50',7635, 1, 2, 4, 7);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (36, '2022-03-04 20:26:09',7634, 1, 2, 3, 2);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (47, '2022-09-29 13:02:09',8745, 2, 8, 8, 8);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (39, '2022-11-12 01:26:14',5433, 3, 4, 7, 5);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (3, '2022-04-21 06:52:05',1264, 2, 3, 6, 2);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (36, '2022-07-05 15:37:20',7655, 3, 7, 1, 2);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (7, '2022-02-14 14:54:49',1827, 2, 6, 9, 4);
INSERT INTO booking (holiday_duration, date_of_booking,booking_price, staff_id, cust_id, flight_id, accom_id) values (4, '2022-08-09 11:19:17', 335, 4, 9, 9);
--traveller
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Holli', 'Mancer', 'F', '11-10-1972', '4115381JA', 'Miramichi', 'Downing Street', 'RM5 3XH',1);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Cesare', 'Frazier', 'M', '04-08-1984', '1241125LH', 'Roissy Charles-de-Gaulle', 'Baker Street', 'TA15 6UT',1 );
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Mina', 'Brierley', 'F', '02-09-1975', '8268048MA', 'Malikisi', 'Bond Street','CM14 4LL', 3);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Olivier', 'Evanson', 'M', '18-06-1994', '4115381JA', 'Rudnogorsk', 'Oxford Street', 'NG33 5QP', 4);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Paulie', 'Colombier', 'M', '10-03-1966', '1241125LH', 'Czchów', 'Piccadilly', 'FK20 8RN', 6);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Neile', 'Wildish', 'F', '24-02-1986', '6993459TH', 'Ejidal', 'Regent Street', 'PA76 6SJ', 6);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Fielding', 'Mumbray', 'M', '05-06-1968', '4835734QA', 'Meijiahe', 'Park Lane','DL12 9SA', 7);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Nat', 'Chatin', 'M', '08-05-1994', '7141506RA', 'Karangkeng', 'Great Russel Street','CF83 1EA', 7);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Con', 'Gogarty', 'M', '25-10-1977', '4115381JA', 'Radekhiv', 'Fleet Street', 'L11 3EF', 9);
INSERT INTO traveller (traveller_fname, traveller_lname, sex, date_of_birth, passport_no, traveller_city, street_name, traveller_postcode, booking_id) values ('Milo', 'Langlands', 'M', '08-07-1970', '4835734QA', 'Cimenga', 'The Strand','S3 8HT', 9);
--payment
--package
INSERT INTO package (package_name, package_price, package_description) values ('silver package', 1615, '2 nights in a 5 star hotel in italy(flights included)');
INSERT INTO package (package_name, package_price, package_description) values ('pemium package', 4429, '7 nights in japan(hotel and flight inluded)');
INSERT INTO package (package_name, package_price, package_description) values ('gold package', 1814, '7 nights in japan(hotel and flight inluded)');
INSERT INTO package (package_name, package_price, package_description) values ('gold package', 3191, '2 nights in a 5 star hotel in italy(flights included)');
INSERT INTO package (package_name, package_price, package_description) values ('silver package', 1180, '7 nights in japan(hotel and flight inluded)');
INSERT INTO package (package_name, package_price, package_description) values ('gold package', 1092, '3 nights in egypt(5 star hotel + flights inluded)');
INSERT INTO package (package_name, package_price, package_description) values ('gold package', 1419, '2 nights in a 5 star hotel in italy(flights included)');
INSERT INTO package (package_name, package_price, package_description) values ('silver package', 2360, '3 nights in egypt(5 star hotel + flights inluded)');
INSERT INTO package (package_name, package_price, package_description) values ('gold package', 1245, '2 nights in a 5 star hotel in italy(flights included)');
INSERT INTO package (package_name, package_price, package_description) values ('gold package', 1534, '3 nights in egypt(5 star hotel + flights inluded)');
--book_package
insert into book_package (package_id, booking_id) values (9, 9);
insert into book_package (package_id, booking_id) values (7, 4);
insert into book_package (package_id, booking_id) values (5, 9);
insert into book_package (package_id, booking_id) values (10, 9);
insert into book_package (package_id, booking_id) values (2, 5);
insert into book_package (package_id, booking_id) values (3, 9);
insert into book_package (package_id, booking_id) values (8, 3);
insert into book_package (package_id, booking_id) values (7, 8);
insert into book_package (package_id, booking_id) values (10, 5);
insert into book_package (package_id, booking_id) values (4, 1);
--car_rent
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Chevrolet', 'Tahoe', '', 6, 2, 'manual', 'petrol', 115, 'Brazil', 'Piritiba', 'High Street', '44830-000');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Volvo', 'V70', 'GH76SKL', 2, 4, 'manual', 'petrol', 84, 'Peru', 'Huarancante', 'Main Street', '37847');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Toyota', 'Prius', 'GH76SKL', 2, 2, 'automatic', 'diesel', 107, 'Poland', 'Bieniewice', 'Station Road', '05-870');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Toyota', 'Land Cruiser', 'JF76GVH', 7, 5, 'manual', 'petrol', 124, 'Armenia', 'Byuravan', 'London Road','NG33 5RR');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Hyundai', 'Tiburon', 'HG76HJI', 7, 3, 'semi-auto', 'hybrid', 71, 'China', 'Zhangxiang', 'Park Road','83974');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Oldsmobile', 'Aurora', 'ST35HFJ', 7, 1, 'automatic', 'hybrid', 99, 'Russia', 'Nakhabino', 'Victoria Road', '433532');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Mitsubishi', 'Montero', 'JF76GVH', 5, 4, 'manual', 'hybrid', 125, 'Croatia', 'Žrnovo', '1st Street', '20275');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Volkswagen', 'Jetta III', '', 5, 3, 'manual', 'petrol', 101, 'Sweden', 'Solna', '4th Street', '170 66');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Chevrolet', 'Camaro', 'JHHFYUV8', 2, 4, 'semi-auto', 'hybrid', 84, 'Indonesia', 'Roger Drive', 'Main','38483GH');
INSERT INTO car_rent (car_brand, car_model, car_regist, no_of_seats, no_of_bags, transmission_type, fuel_type, rent_price, car_country, car_city, street_name, car_postcode) values ('Mitsubishi', 'RVR', 'HGJH878', 2, 3, 'semi-auto', 'hybrid', 72, 'Canada', 'Nanton', 'Susan Lane', 'L5M');
--car_book
insert into car_book (car_id, booking_id) values (10, 8);
insert into car_book (car_id, booking_id) values (4, 10);
insert into car_book (car_id, booking_id) values (4, 3);
insert into car_book (car_id, booking_id) values (3, 6);
insert into car_book (car_id, booking_id) values (1, 7);
insert into car_book (car_id, booking_id) values (9, 6);
insert into car_book (car_id, booking_id) values (8, 10);
insert into car_book (car_id, booking_id) values (10, 8);
insert into car_book (car_id, booking_id) values (7, 8);
insert into car_book (car_id, booking_id) values (2, 7);
--flight_book
insert into flight_book (flight_id, booking_id) values (6, 9);
insert into flight_book (flight_id, booking_id) values (1, 8);
insert into flight_book (flight_id, booking_id) values (9, 4);
insert into flight_book (flight_id, booking_id) values (3, 3);
insert into flight_book (flight_id, booking_id) values (6, 6);
insert into flight_book (flight_id, booking_id) values (5, 1);
insert into flight_book (flight_id, booking_id) values (3, 8);
insert into flight_book (flight_id, booking_id) values (8, 8);
insert into flight_book (flight_id, booking_id) values (9, 5);
insert into flight_book (flight_id, booking_id) values (9, 3);
--airport
INSERT INTO airport (airport_name, iata_code) values ('London Hethrow Airport', 'LHR');
INSERT INTO airport (airport_name, iata_code) values ('London Gatwick Airport', 'LGW');
INSERT INTO airport (airport_name, iata_code) values ('Manchester Airport', 'MAN');
INSERT INTO airport (airport_name, iata_code) values ('Salt Lake City International Airport', 'SLC');
INSERT INTO airport (airport_name, iata_code) values ('Falcone Borsellino Airport', 'PMO');
INSERT INTO airport (airport_name, iata_code) values ('San Francisco Airport', 'SFO');
INSERT INTO airport (airport_name, iata_code) values ('Manchester Airport', 'MAN');
INSERT INTO airport (airport_name, iata_code) values ('London Hethrow Airport', 'LHR');
INSERT INTO airport (airport_name, iata_code) values ('London Gatwick Airport', 'LGW');
INSERT INTO airport (airport_name, iata_code) values ('Manchester Airport', 'MAN');
--flight_airport
INSERT INTO flight_airport (flight_id, airport_id) values (8, 6);
INSERT INTO flight_airport (flight_id, airport_id) values (3, 9);
INSERT INTO flight_airport (flight_id, airport_id) values (2, 5);
INSERT INTO flight_airport (flight_id, airport_id) values (7, 9);
INSERT INTO flight_airport (flight_id, airport_id) values (2, 6);
INSERT INTO flight_airport (flight_id, airport_id) values (4, 3);
INSERT INTO flight_airport (flight_id, airport_id) values (4, 6);
INSERT INTO flight_airport (flight_id, airport_id) values (4, 1);
INSERT INTO flight_airport (flight_id, airport_id) values (4, 8);
INSERT INTO flight_airport (flight_id, airport_id) values (6, 5);
--cabin_class
INSERT INTO cabin_class (class_name) values ('first class');
INSERT INTO cabin_class (class_name) values ('first class');
INSERT INTO cabin_class (class_name) values ('economy');
INSERT INTO cabin_class (class_name) values ('business class');
INSERT INTO cabin_class (class_name) values ('premium economy');
INSERT INTO cabin_class (class_name) values ('first class');
INSERT INTO cabin_class (class_name) values ('economy');
INSERT INTO cabin_class (class_name) values ('business class');
INSERT INTO cabin_class (class_name) values ('first class');
INSERT INTO cabin_class (class_name) values ('first class');
--flight_class
INSERT INTO flight_class (flight_id, class_id) values (6, 6);
INSERT INTO flight_class (flight_id, class_id) values (5, 5);
INSERT INTO flight_class (flight_id, class_id) values (6, 7);
INSERT INTO flight_class (flight_id, class_id) values (2, 7);
INSERT INTO flight_class (flight_id, class_id) values (4, 3);
INSERT INTO flight_class (flight_id, class_id) values (4, 10);
INSERT INTO flight_class (flight_id, class_id) values (3, 7);
INSERT INTO flight_class (flight_id, class_id) values (3, 7);
INSERT INTO flight_class (flight_id, class_id) values (3, 3);
INSERT INTO flight_class (flight_id, class_id) values (4, 4);
