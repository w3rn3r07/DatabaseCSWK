-- Q1) Find out the name of the customer, and the number of travellers travelling to Kuwait?
SELECT cust_fname, cust_lname, no_of_travellers FROM customer 
JOIN booking USING (cust_id)
JOIN accomodation USING (accom_id)
WHERE accom_country = "Kuwait";
ORDER BY cust_lname

-- Q2) Find which customer is staying at which accommodation with room info and accomodation facilities
SELECT distinct cust_fname, cust_lname,accom_name FROM customer
JOIN booking USING (cust_id)
JOIN accomodation USING (accom_id)
JOIN room USING (accom_id);
ORDER BY cust_lname
