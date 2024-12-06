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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        SqlConnection conn = new SqlConnection(@"Data Source= JTHP\JTHP;Initial Catalog=Makeup_Store;Integrated Security=True");

        private void Login_Button_Click(object sender, EventArgs e)
        {
            string Username, user_password;

            Username = username.Text;
            user_password = paseword.Text;

            try
            {
                string querry = "SELECT * FROM Login_Table WHERE UserName = '" + username.Text + "' AND PassWord = '" + paseword.Text + "'";
                SqlDataAdapter sda = new SqlDataAdapter(querry, conn);

                DataTable dtable = new DataTable();
                sda.Fill(dtable);

                if (dtable.Rows.Count > 0)
                {
                    Username = username.Text;
                    user_password = paseword.Text;
                    MessageBox.Show("Giris Yapildi");
                    //page that needed to be load next
                    Raporlama Rapor = new Raporlama();
                    Rapor.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Invalid login details", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    username.Clear();
                    paseword.Clear();
                    //to focus username
                    username.Focus();
                }
            }
            catch
            {
                MessageBox.Show("Error");
            }
            finally
            {
                conn.Close();
            }
        }

        private void Clear_Button_Click(object sender, EventArgs e)
        {
            username.Clear();
            paseword.Clear();

            username.Focus();

        }
    }
}
