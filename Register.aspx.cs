using System;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace b
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text;

                // Database connection string
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["LocalDBConnection"].ConnectionString;

                try
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        // Check if user already exists
                        string checkQuery = "SELECT COUNT(*) FROM Users WHERE Username = @Username OR Email = @Email";
                        using (SqlCommand cmd = new SqlCommand(checkQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@Username", username);
                            cmd.Parameters.AddWithValue("@Email", email);

                            int existingUsers = Convert.ToInt32(cmd.ExecuteScalar());

                            if (existingUsers > 0)
                            {
                                ShowMessage("Username or Email already exists!", false);
                                return;
                            }
                        }

                        // Hash password (simple SHA256 for demo - use stronger in production)
                        string hashedPassword = HashPassword(password);

                        // Insert new user
                        string insertQuery = @"INSERT INTO Users (Username, Password, Email) 
                                             VALUES (@Username, @Password, @Email);
                                             SELECT SCOPE_IDENTITY();";

                        using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                        {
                            cmd.Parameters.AddWithValue("@Username", username);
                            cmd.Parameters.AddWithValue("@Password", hashedPassword);
                            cmd.Parameters.AddWithValue("@Email", email);

                            int newUserId = Convert.ToInt32(cmd.ExecuteScalar());

                            if (newUserId > 0)
                            {
                                ShowMessage("Registration successful! Redirecting to login...", true);

                                // Clear form
                                txtUsername.Text = "";
                                txtEmail.Text = "";
                                txtPassword.Text = "";
                                txtConfirmPassword.Text = "";

                                // Redirect to login page after 2 seconds
                                Response.AddHeader("REFRESH", "2;URL=Login.aspx");
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
            lblMessage.CssClass = isSuccess ? "message success" : "message danger";
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