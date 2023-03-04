# Database
Case Study coursework

Sunnyside Holidays is a business in the tourism sector with several branches around the UK and they provide touristic packages all over the world including flights & accommodations and optional car renting.  As the business expanded the management team decided that they will need a central database where each branch can connect and proceed with the bookings for the customers. They would like a design for a centralised database (single location relational DB)  that allows web interface access for the employees (YOU WILL NOT COVER THE WEB INTERFACE).The company has multiple roles for employees, each with their own responsibilities.

As in their holiday packages Sunnyside Holiday are offering flights and hotels they should be able to identify, for each customer, what flight they have,  where they will stay and the duration of holiday. Some customers are travelling with family and children and it would be ideal if the company could provide information about what amenities and facilities a hotel has.

The price can be different per package and is quoted per person, including flight and accommodation (e.g. Package One - 7 Days in Tenerife at Hotel Gold Sun £500/pp; Package Two - 7 Days in Tenerife at Hotel Green Island £750/pp etc ). The package prices are fixed and they cannot be combined with other flights or hotels. They are considering adding in the future discounts for different packages but this is not a priority at the moment although it will be a nice feature to have.

Sunnyside Holidays do not store information about accompanied travellers (e.g. name, address dob etc -  although this information would be very useful for them) but they are recording the number of travelling adults and/or children to be able to calculate package price.

One of the features offered by the Sunnyside Holidays is that a customer can pay for a holiday in one or more instalments hence, it is important for the business to be able to track the payment status. The payment process is handled through 3rd party application, so no credit/debit card details are stored but the status (e.g. “Paid/Unpaid”; “The customer should pay £1000 and so far paid “250“ etc.). The company should be able to track the number of instalments (if any) and the amount paid per instalment.

The business takes security very seriously and they would like only authorised personnel to access payments (e.g. as all office employees might have access to the database for bookings but only the accountants and managers should have access to the payments history).

Typical Reports

Total package cost per booking

Different statistics (e.g. best performing package; most visited location, most bookings per branch etc)

Detail about a specific booking

Package payment status


ERD

![image](https://user-images.githubusercontent.com/114817516/222854787-479e1023-69f2-4a1c-8047-888fa9df9ed6.png)

                            Assumptions:
                            
Customer:

  customers can make one or multiple bookings
  
  Customers can have zero or mutliple travellers with them
  
Branch:

 One branch will have many staff
 
Staff:

 Staff can have one or multiple roles
 
 One role can be done by mutliple staff
 
Role:

  One role can be done by mutiple staff
  
  Mutiple roles can be done by one staff member
  
Accommodation:
  
  Accommodation can have many bookings
  
  Mutiple bookings can be done in one accommodation
  
Room:

  One accommodation can have multiple rooms.

Facility:

  One accommodation can have many facilities, but the same facilities(e.g. gym) can be in       other accommpdations.

Flight:

  Customer can book one flight or mutiple flights.
  
  One flight can be bookeed by mutiple flights.

Booking:
  
  Customer can make multiple bookings
  .
  Accommodation, flights, cars packages can be booked by one or many custoemrs.
  
  Holiday durations will be in days

Traveller:

  Traveller are people that are going wiht the customer, so customer themselves are not         counted as a traveller.

Payement:

  Customer can choose to pay in one go, or monthly for up to 12 months to spread the cost.

installment:

  Even if a customer chooses to pay in one go, it would be counted as a single intallement       rather than monthly installment.

Package:

   One customer can book one or many packages
   
   Many packages can be booked by many customers.

Car_rent:

  Customer can book zero or mutiple cars.
  
  Many cars can be booked by many customers

Airport:

  One airport can have one or mutiple flights.
  
  One flight can go to mutiple airports.
  
  Mutiple airports can land in mutiple airports.

Cabin_class:

   Cabin class is the service provided on the aeroplane (e.g. business class, economy)
   Mnay cabins be on many flights
   
                        Security

Security considerations
In the case study it has mentioned that only authorised personnel can only access payment history for
accountants and managers and the rest of the employees might have access to the database depending on their
roles and needs. What could be fatal relating to this case is that unauthorised employees accessing the
payments that have card details and may exploit it. Which is a financial database breach.
The have created a role and privileges of the employee are shown below:

![Capture](https://user-images.githubusercontent.com/114817516/222922880-1d1d59f9-14ff-4c94-bd95-f73e5a002076.PNG)

I have given the head admin the superuser privilege. I gave the admin the privilege to create roles and create DB.
The manager will have access to the whole table but can only select. Accountants will only have access to
customer, booking, payment, installment_pay, instalment table and can only select. We gave the manager and
accountant access to the payment because the case studies say they can only have access to it due to security
reasons. The case study mentions that we should be able to identify each customer of what flight they have,
where they will stay, and the duration of the holiday. Here we are amusing that an employee with a certain role is
going to need this to help the customer, we made the reg_employees role to help the customer out if he/she
doesn’t remember the details with necessary table access that won’t create any vulnerabilities in security.

Principle of the least privileges will be used to maintain security to prevent this, where we can give different
authority to different users according to their work. When following the principle. 1. We need to check the
permission given to the user and system from time to time and their request to ensure that the principle is used
properly. 2. Disable user accounts when they are no longer in use. 3. Removes the users from groups they are
no longer associated with. 4. Review the permissions given to the admins and monitor their activity. 5. Monitor
the privilege and take immediate action if needed. 6. Use auditing to monitor all activities.

We are going to need to use auditing because it will monitor and record user database actions e.g actions in the
payments. It will detect what the user changed, who the user is, when it changed and so on. Auditing is used to
delete users from inappropriate actions, investigate suspicious actions, notify that unauthorised users are
manipulating or deleting data and notify that the user has more privileges than given leading to reconsidering
user authority.

The database will have encrypted full backups and incremental backups. Full backups will be performed at least
once a week and incremental back will be used hourly. In case employees corrupt or delete files we can do a
recovery.

Insider threats might appear from Employees falling for social engineering traps. To prevent this or minimise the
risk staff need to be educated and trained on security awareness training by experts and it should be an ongoing
activity. Another way to prevent this is to have antivirus and endpoint security tools. Endpoints can identify and
block phishing attacks or any messages with a link to a malicious website or IP listed in a threat intelligence
database. We also can make employees unable to install or download software without an admin pass.

All employees from sunnyside holidays will have to have a multi-factor authentication along with a strong
password with requirements of special characters, uppercase, lowercase and numbers to ensure further
protection of the company even if the main password is compromised and passwords must be changed every 6
months. When the employee gets to access the database from the database administrator, employees will need
to create a different password to access the database. When employees get their password wrong multiple times
their account will be locked and have to see admin to get it unlocked. To minimise the chance of social
engineering traps, emails, data and communication needs to be encrypted. This can be achieved by using a vpn
within the business. if attackers intercept the data during transit they cannot access the information making it
useless.

Policies being all employees will have passwords with multi-factor authentication and passwords must be
changed every 6 months to ensure protection of the company and be trained on security awareness by experts.
Also employees must use vpn and antivirus.
The standards are that passwords must have special characters, uppercase letters, lowercase letters and
numbers with minimum characters of 7 requirement with constraints of names, date of birth and similar to last
changed password and all users must use a vpn to encrypt emails, data and communication.
The procedures to create passwords

The process for creating a new account begins with an end user sending a written request to the database
administrator (DBA). If the request is approved, the DBA forwards it to the data administrator (DA) who is
responsible for handling the creation of the account. The DA creates the account, assigns a temporary password,
and sends the account information to the end user. A copy of the account information is also sent to the DBA.
Finally, the end user is responsible for changing the temporary password to a permanent one.

For physical security, the database server will need to be stored in a building in a locked room with a security
officer that patrols the locked room and security cameras. Only IT(information technology) and dba(Database
Administration) will have access to the room and when they access the server room they need to log who went
in, what time and reasoning.

Policy is that the database server room should be locked at all times. A standard is that a security officer will
patrol the room and it and dba will have access to the room. The procedure is to install the right type of lock and
security cameras.
