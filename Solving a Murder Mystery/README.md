# Solving a Murder Mystery with SQL  

This project is based on data and inspiration from **NUKnightLab**. It challenges you to solve a murder mystery using SQL by navigating through a database and piecing together critical clues.  

---

## Project Overview  

A murder has occurred, and a detective is seeking your help to crack the case. Unfortunately, the crime scene report has been misplaced. Here’s what we remember:  

- The crime was a **murder** that happened on **January 15, 2018**, in **SQL City**.  
- The clues to solving this mystery are buried within a large SQL database.  

Your task is to query the database to retrieve the crime scene report, identify the murderer, and uncover the mastermind behind the crime.  

---

## Objective  

- Use SQL queries to explore the **SQL Police Department Database**.  
- Find and analyze the data to solve the murder mystery.  

---

## Database Schema  

The project uses multiple interconnected tables containing the necessary information. Below is a summary of the schema:  

### **1. Crime Scene Report Table**  
| Column       | Description                                |  
|--------------|--------------------------------------------|  
| `date`       | Date of the crime                         |  
| `type`       | Type of the crime                         |  
| `description`| Official police report of the crime       |  
| `city`       | City where the crime occurred             |  

### **2. Drivers License Table**  
| Column        | Description                                |  
|---------------|--------------------------------------------|  
| `id`          | Unique driver's license number            |  
| `age`         | Age of the driver                         |  
| `height`      | Height of the driver                      |  
| `eye_color`   | Eye color of the driver                   |  
| `hair_color`  | Hair color of the driver                  |  
| `gender`      | Gender of the driver                      |  
| `plate_number`| Registered plate number of the car        |  
| `car_make`    | Manufacturer of the car                   |  
| `car_model`   | Model of the car                          |  

### **3. Facebook Event Check-In Table**  
| Column        | Description                                |  
|---------------|--------------------------------------------|  
| `person_id`   | Unique ID of the person checking in       |  
| `event_id`    | Unique ID of the event                    |  
| `event_name`  | Name of the event                         |  
| `date`        | Date of the check-in                     |  

### **4. Get Fit Now Members Table**  
| Column                  | Description                                |  
|-------------------------|--------------------------------------------|  
| `id`                    | Unique member ID                          |  
| `person_id`             | Unique ID of the person                   |  
| `name`                  | Name of the member                        |  
| `membership_start_date` | Date the person became a member           |  
| `membership_status`     | Membership tier of the person             |  

### **5. Get Fit Now Check-In Table**  
| Column          | Description                                |  
|-----------------|--------------------------------------------|  
| `membership_id` | Unique ID of the member                   |  
| `check_in_date` | Date the member checked into the gym       |  
| `check_in_time` | Time the member checked into the gym       |  
| `check_out_time`| Time the member checked out of the gym     |  

### **6. Income Table**  
| Column         | Description                                |  
|----------------|--------------------------------------------|  
| `ssn`          | Unique social security number of the person |  
| `annual_income`| Annual income of the person in USD         |  

### **7. Interview Table**  
| Column        | Description                                |  
|---------------|--------------------------------------------|  
| `person_id`   | Unique ID of the person                   |  
| `transcript`  | Official transcript of the person's interview |  

### **8. Person Table**  
| Column               | Description                                |  
|----------------------|--------------------------------------------|  
| `id`                 | Unique ID of the person                   |  
| `name`               | Name of the person                        |  
| `license_id`         | Unique driver's license number            |  
| `address_number`     | Apartment number of the person            |  
| `address_street_name`| Street name of the person's address       |  
| `ssn`                | Unique social security number of the person |  

---

## How to Approach  

1. Start by retrieving the **crime scene report** using SQL queries.  
2. Use the clues from the report to explore other tables and uncover connections.  
3. Analyze the data carefully to identify the murderer and the mastermind.  

---

## Tools  

- SQL Database (Compatible with MySQL, SQLite, PostgreSQL, etc.)  
- SQL Editor or IDE (e.g., MySQL Workbench, SQLite Browser)  

---

## License  

This project is based on publicly available data provided by **NUKnightLab**.  
