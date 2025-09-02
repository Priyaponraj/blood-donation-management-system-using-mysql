Blood Donation Management System (MySQL)

This project demonstrates a simple approach to manage blood donors, blood banks, and patient requests using MySQL

Features
- Stores donor details (name, age, gender, blood group, contact, last donation date).
- Manages blood bank records and their inventory.
- Handles patient blood requests and updates stock automatically.
- Provides useful queries to search donors, check stock, and generate reports.

 Example Output (Queries)
- Find donors by blood group.
- Check available blood stock in a blood bank.
- Approve or reject patient requests.
- Count donors grouped by blood type.

Requirements
- MySQL installed (Workbench / phpMyAdmin / Online compiler).  
- SQL file: `blood_donation.sql`
- 
How It Works
1. The database schema is created using SQL `CREATE TABLE` statements.  
2. Sample data is inserted into Donors, BloodBanks,BloodInventory, and Requests tables.  
3. SQL queries can be executed to:  
   - Search donors  
   - Update inventory after donation  
   - Approve blood requests  
   - Generate donor/blood availability reports
  
How to Use
1. Clone the repository or download the SQL file.  
2. Open MySQL Workbench or phpMyAdmin.  
3. Create a new database:  
   ```sql
   CREATE DATABASE blood_donation;
   USE blood_donation;

4. Import blood_donation.sql.

5. Run queries like:

SELECT * FROM donors;
SELECT * FROM bloodinventory;
SELECT * FROM requests WHERE status='Pending';


📂 File Structure

├── blood_donation.sql    # MySQL script with tables, inserts, and queries
├── README.md              # Project documentation
└── Project_Report.pdf     # Detailed project report (optional)


🔍 Dependencies

MySQL

(Optional) SQLFiddle or other online compilers for demo

⚠️ Notes

Data is sample only (can be extended with real hospital/donor data).

Can be expanded with frontend (PHP/Java/Python) for real-time use.

📄 License
This project is open for educational and non-commercial use.
