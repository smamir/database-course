﻿using System;
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
    public partial class login_form : Form
    {
        public login_form()
        {
            InitializeComponent();
        }

        private void login_form_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=USER-PC\SQLEXPRESS;Initial Catalog=airticket;Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From login where username='"+textBox1.Text + "' and password ='"+textBox2.Text+"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {



                this.Hide();
                main_form ss = new main_form();
                ss.Show();
                //ss.ShowDialog();
                
            }
            else
            {
                MessageBox.Show("Access Denied");
            }
            

        }
    }
}
