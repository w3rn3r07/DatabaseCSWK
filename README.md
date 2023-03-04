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
