using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Airticket
{
    public partial class main_form : Form
    {
        public main_form()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            //login_form ss = new login_form();
            //ss.Show();
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            flight_form ss = new flight_form();
            ss.Show();
        }
    }
}
  