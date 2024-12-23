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
