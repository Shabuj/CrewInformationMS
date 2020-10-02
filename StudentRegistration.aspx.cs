using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrewInfoMS
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["CrewInformation"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string Name = name.Value;
            int    Roll = Convert.ToInt32(roll.Value);
            string Email = email.Value;
            bool Active = active.Checked == true;
            string Semister = semister.Value;

            SqlConnection conn = new SqlConnection(connectionString);
            string query = "INSERT INTO " +
               "student_tbl(name,roll_No,email,active,semister)" +
               " VALUES('" + Name + "','" + Roll + "'," +
               "'" + Email + "','" + Active + "'," +
               "" + Semister + ") ";
            SqlCommand command = new SqlCommand(query, conn);
            conn.Open();

            int rowEffect= command.ExecuteNonQuery();

            conn.Close();

            if(rowEffect>0)
            {
                messageLabel.Text = "Data inserted successfully Done";
            }

        }
    }
}