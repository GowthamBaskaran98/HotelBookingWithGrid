using System;
using HotelBooking;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class LogInForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected virtual void Submit_Clicked(object sender, EventArgs e)
        {
            User user = new User(userId.Text, password.Text);
            SqlConnection sqlConnection = new SqlConnection(@"Data Source = KOWSALYA\SQLSERVER; Initial Catalog = master; User ID = sa; Password = gowtham");
            LogInController logInController = new LogInController();
            int retRows = logInController.LogIn(user, sqlConnection);
            if (retRows == 0)
            {
                Response.Write("Incorrect Username or Password");
            }
            else
            { 
                string message = "Logged in successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            //    {
            //        using (SqlCommand sqlCommand = new SqlCommand("Registration", sqlConnection))
            //        {
            //            sqlCommand.CommandType = CommandType.StoredProcedure;
            //            sqlConnection.Open();
            //            sqlCommand.Parameters.Add(new SqlParameter("@userId", TextBox1.Text));
            //            sqlCommand.Parameters.Add(new SqlParameter("@mobileNumber", TextBox2.Text));
            //            sqlCommand.Parameters.Add(new SqlParameter("@password", TextBox3.Text));
            //            sqlCommand.Parameters.Add(new SqlParameter("@userType", TextBox4.Text));
            //            int retRows = sqlCommand.ExecuteNonQuery();
            //            if (retRows >= 1)
            //            {
            //                string message = "Registered successfully.";
            //                string script = "window.onload = function(){ alert('";
            //                script += message;
            //                script += "')};";
            //                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            //            }
            //            else
            //            {
            //                Response.Write("Not Registered...");
            //            }
            //            sqlCommand.Dispose();
            //            sqlConnection.Close();
            //        }
            //    }
        }
        protected virtual void LogIn_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("create.aspx");
        }
    }
}