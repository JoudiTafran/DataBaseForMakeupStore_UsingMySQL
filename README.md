## 💄 Makeup Store Database with Windows Form Application

Welcome to the **Makeup Store Database** project! This project integrates a comprehensive **SQL database** with a **Windows Form .NET Framework application**, designed to manage and analyze data for a makeup store. 

---

## 🗂️ Database Structure

The database contains **8 tables**, structured as follows:

- **Products**: Information about available makeup products.
- **Brands**: The brands associated with the products.
- **Categories**: Makeup categories (e.g., facial products, eye products).
- **Subcategories**: Detailed product categorization (e.g., lipsticks, mascaras).
- **Customers**: Information about store customers.
- **Orders**: Orders placed by customers.
- **Order Items**: Detailed items included in each order.
- **Product Reviews**: Customer feedback and product ratings.

The tables are interconnected as shown in the **ER Diagram** included in the project.

---

## 🖥️ Windows Form Application Features

The **Windows Form Application** connects to the database and provides the following functionalities for the **admin**:

1. **Customer Reports**: View a detailed report of all registered customers.
2. **Top-Reviewed Products**: Identify products with the highest reviews.
3. **Best-Selling Products**: Analyze which products are selling the most.

### 🔒 Admin Login

- The **Login Table** in the database contains the credentials:
  - **Username**: `Joudi`
  - **Password**: `J12345`

⚠️ **Important**: Change the default username and password after importing the database.

---

## 📂 Project Files

The project repository includes the following files:

1. **Database Backup**: A backup of the SQL database.
2. **SQL Script**: An `.sql` file to recreate the database and tables.
    - 📌 **Note**: Update the username and password in the **Login Table** after execution.
3. **Windows Form Application**: A functional Windows Form project.
    - 📌 **Note**: Update the **server name** in `Form1.cs` and `Raporlamacs.cs` to match your SQL Server configuration.
4. **ER Diagram**: A PNG image of the database’s Entity-Relationship diagram.
5. **Business Rules**: A Word document detailing the business rules governing the database.

---

## 🚀 How to Use

1. **Set Up the Database**:
    - Import the database backup or execute the provided `.sql` script in **SQL Server Management Studio (SSMS)**.
    - Update the username and password in the **Login Table**.

2. **Configure the Application**:
    - Open the **Windows Form Application** in Visual Studio.
    - Update the **server name** in the `Form1.cs` and `Raporlamacs.cs` files to match your SQL Server instance.

3. **Run the Application**:
    - Build and run the Windows Form application.
    - Log in using the admin credentials (default: `Joudi / J12345`).

4. **Explore the Features**:
    - Access customer reports.
    - View top-reviewed and best-selling products.

---

## 💡 Technologies Used

- **Database**: SQL Server Management Studio 
- **Frontend**: Windows Form Application (.NET Framework)
- **IDE**: Visual Studio
- **Programming Languages**: MySql, C#

---

Enjoy exploring the **Makeup Store Database** project! For any questions or suggestions, feel free to reach out. 🌟
