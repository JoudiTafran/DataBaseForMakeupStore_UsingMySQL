using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace B221200551_Joudi_SQLProje
{
    public partial class Raporlama : Form
    {
        public Raporlama()
        {
            InitializeComponent();
        }

        private const string connectionString = @"Data Source= JTHP\JTHP;Initial Catalog=Makeup_Store;Integrated Security=True";

        private void button2_Click(object sender, EventArgs e)
        {
            // Clear the existing columns and rows
            dataGridView1.Columns.Clear();
            dataGridView1.Rows.Clear();

            // Add the columns
            dataGridView1.Columns.Add("Review_ID", "Review ID");
            dataGridView1.Columns.Add("Product_ID", "Product ID");
            dataGridView1.Columns.Add("Product_Name", "Product Name");
            dataGridView1.Columns.Add("Rating", "Rating");
            dataGridView1.Columns.Add("Review_Text", "Review Text");
            dataGridView1.Columns.Add("Review_Date", "Review Date");

            // Query the database and populate the DataGridView
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT review_id, product_id, product_name, rating, review_text, review_date FROM Product_Reviews WHERE rating > 3";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the command and load the results into the DataGridView
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        dataGridView1.Rows.Clear(); // Clear existing data
                        while (reader.Read())
                        {
                            dataGridView1.Rows.Add(reader["review_id"], reader["product_id"], reader["product_name"], reader["rating"], reader["review_text"], reader["review_date"]);
                        }
                    }
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // Clear the existing columns and rows
            dataGridView1.Columns.Clear();
            dataGridView1.Rows.Clear();

            // Add the columns
            dataGridView1.Columns.Add("Customer_ID", "ID");
            dataGridView1.Columns.Add("Customer_Name", "Name");
            dataGridView1.Columns.Add("Email", "Email");
            dataGridView1.Columns.Add("Age", "Age");
            dataGridView1.Columns.Add("Country", "Country");
            dataGridView1.Columns.Add("City", "City");
            dataGridView1.Columns.Add("Postal_Code", "Postal Code");

            // Query the database and populate the DataGridView
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Customers";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the command and load the results into the DataGridView
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        dataGridView1.Rows.Clear(); // Clear existing data
                        while (reader.Read())
                        {
                            dataGridView1.Rows.Add(reader["customer_id"], reader["customer_name"], reader["email"], reader["age"], reader["Country"], reader["City"], reader["Postal_code"]);
                        }
                    }
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            // Clear the existing columns and rows
            dataGridView1.Columns.Clear();
            dataGridView1.Rows.Clear();

            // Add the columns
            dataGridView1.Columns.Add("Product_ID", "Product ID");
            dataGridView1.Columns.Add("Product_Name", "Product Name");
            dataGridView1.Columns.Add("Quantity", "Quantity");

            // Query the database and populate the DataGridView
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT product_id, product_name, quantity FROM Order_Items WHERE quantity > 6";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    // Execute the command and load the results into the DataGridView
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        dataGridView1.Rows.Clear(); // Clear existing data
                        while (reader.Read())
                        {
                            dataGridView1.Rows.Add(reader["product_id"], reader["product_name"], reader["quantity"]);
                        }
                    }
                }
            }
        }
    }
}
