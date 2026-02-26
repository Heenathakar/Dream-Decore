using System;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace b
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;

                // Check if user is already logged in
                if (Session["UserID"] != null)
                {
                    Response.Redirect("Dashboard.aspx");
                }

                // Check for remember me cookie
                if (Request.Cookies["UserRemember"] != null)
                {
                    txtUsername.Text = Request.Cookies["UserRemember"]["Username"];
                    chkRemember.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string usernameOrEmail = txtUsername.Text.Trim();
                string password = txtPassword.Text;

                // Hash the password for comparison
                string hashedPassword = HashPassword(password);

                // Database connection string
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;

                try
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        string query = @"SELECT UserID, Username, Email 
                                        FROM Users 
                                        WHERE (Username = @Username OR Email = @Username) 
                                        AND Password = @Password";

                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Username", usernameOrEmail);
                            cmd.Parameters.AddWithValue("@Password", hashedPassword);

                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    // Login successful
                                    Session["UserID"] = reader["UserID"].ToString();
                                    Session["Username"] = reader["Username"].ToString();
                                    Session["Email"] = reader["Email"].ToString();

                                    // Remember me functionality
                                    if (chkRemember.Checked)
                                    {
                                        HttpCookie cookie = new HttpCookie("UserRemember");
                                        cookie["Username"] = usernameOrEmail;
                                        cookie.Expires = DateTime.Now.AddDays(7);
                                        Response.Cookies.Add(cookie);
                                    }
                                    else
                                    {
                                        // Clear cookie if exists
                                        if (Request.Cookies["UserRemember"] != null)
                                        {
                                            HttpCookie cookie = new HttpCookie("UserRemember");
                                            cookie.Expires = DateTime.Now.AddDays(-1);
                                            Response.Cookies.Add(cookie);
                                        }
                                    }

                                    // Redirect to dashboard
                                    Response.Redirect("Home.aspx");
                                }
                                else
                                {
                                    ShowMessage("Invalid username/email or password!", false);
                                }
                            }
                        }
                    }
                }
                catch (SqlException sqlEx)
                {
                    ShowMessage("Database error: " + sqlEx.Message, false);
                }
                catch (Exception ex)
                {
                    ShowMessage("Error: " + ex.Message, false);
                }
            }
        }

        private void ShowMessage(string message, bool isSuccess)
        {
            lblMessage.Text = message;
            lblMessage.CssClass = "message danger";
            lblMessage.Visible = true;
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}