using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrewInfoMS
{
    public partial class _Default : Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["CrewInformation"].ConnectionString;
  
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                showGridview();
            }
        }

        private void showGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM crew_tbl order by CrewName desc ";
                SqlDataAdapter data = new SqlDataAdapter(query, connection);
                data.Fill(dtbl);
            }
            if(dtbl.Rows.Count>0)
            {
                crewInfo.DataSource = dtbl;
                crewInfo.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                crewInfo.DataSource = dtbl;
                crewInfo.DataBind();
                crewInfo.Rows[0].Cells.Clear();
                crewInfo.Rows[0].Cells.Add(new TableCell());
                crewInfo.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                crewInfo.Rows[0].Cells[0].Text = "No Data Found";
                crewInfo.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
           


        }

        protected void crewInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("AddNew"))
            {
                using(SqlConnection conn = new SqlConnection(connectionString) )
                {
                    conn.Open();
                    string query = "INSERT INTO crew_tbl(CrewName,Address,Email,Phone,Active,CreateDate) VALUES('"+(crewInfo.FooterRow.FindControl("nameFooter") as TextBox).Text.Trim()+"','"+ (crewInfo.FooterRow.FindControl("addressFooter") as TextBox).Text.Trim() +"','"+ (crewInfo.FooterRow.FindControl("emailFooter") as TextBox).Text.Trim() + "','"+(crewInfo.FooterRow.FindControl("phoneFooter") as TextBox).Text.Trim()+"','"+ (crewInfo.FooterRow.FindControl("activeFooter") as TextBox).Text.Trim() + "',GETDATE())";
                    SqlCommand command = new SqlCommand(query, conn);


                    command.ExecuteNonQuery();
                    showGridview();
                    lblmessage.Text = "New record added Successfully.";
                    lblerror.Text = "";
                    conn.Close();
                }
            }
        }

        protected void crewInfo_RowEditing(object sender, GridViewEditEventArgs e)
        {
            crewInfo.EditIndex = e.NewEditIndex;
            showGridview();
        }

        protected void crewInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "UPDATE crew_tbl SET CrewName='" + (crewInfo.Rows[e.RowIndex].FindControl("name") 
                    as TextBox).Text.Trim() + "',Address='" + (crewInfo.Rows[e.RowIndex].FindControl("address") 
                    as TextBox).Text.Trim() + "',Email='" + (crewInfo.Rows[e.RowIndex].FindControl("email") 
                    as TextBox).Text.Trim() + "',Phone='" + (crewInfo.Rows[e.RowIndex].FindControl("phone") 
                    as TextBox).Text.Trim() + "',Active='" + (crewInfo.Rows[e.RowIndex].FindControl("active")
                    as TextBox).Text.Trim() + "',CreateDate=GETDATE()";
                SqlCommand command = new SqlCommand(query, conn);
                command.ExecuteNonQuery();
                showGridview();
                lblmessage.Text = " record Updated Successfully.";
                lblerror.Text = "";
                conn.Close();
            }
        }

        protected void crewInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string query = "DELETE FROM crew_tbl WHERE CrewName = '"+crewInfo.DataKeys[e.RowIndex].Value + "'";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.ExecuteNonQuery();
                showGridview();
                lblmessage.Text = " record Deleted Successfully.";
                lblerror.Text = "";
                sqlCon.Close();
            }
        }

        protected void crewInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            crewInfo.EditIndex = -1;
            showGridview();
        }
    }
}