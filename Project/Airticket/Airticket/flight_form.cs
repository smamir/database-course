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

namespace Airticket
{
    public partial class flight_form : Form
    {
        public flight_form()
        {
            InitializeComponent();
        }

        private void flight_form_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=USER-PC\SQLEXPRESS;Initial Catalog=airticket;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand ("Insert into flight values ('"+ textBox1.Text +"','"+ textBox2.Text +"','"+ textBox3.Text +"','"+ textBox4.Text +"','"+ textBox5.Text +"','"+ textBox6.Text +"','"+ textBox7.Text +"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Insert Success!");
             textBox1.Clear();
             textBox2.Clear();
             textBox3.Clear();
             textBox4.Clear();
             textBox5.Clear();
             textBox6.Clear();
             textBox7.Clear();
             textBox8.Clear();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=USER-PC\SQLEXPRESS;Initial Catalog=airticket;Integrated Security=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"UPDATE flight SET flight_time='" + textBox2.Text + "',flight_date='" + textBox3.Text + "',flight_source='" + textBox4.Text + "',flight_destination='" + textBox5.Text + "',no_of_seat='" + textBox6.Text + "',flight_fare='" + textBox7.Text + "' WHERE (flight_id='"+textBox1.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Update Success!");
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
            textBox6.Clear();
            textBox7.Clear();
            textBox8.Clear();
            
        }
    }
}
