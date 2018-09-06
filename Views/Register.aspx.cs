using System;
using System.Data.SqlClient;
using EncryptionandDecryption;

namespace DisplayTableOriginal.Views
{
    public partial class Register : System.Web.UI.Page
    {

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();

            connection.ConnectionString = @"Data Source=...; Initial Catalog= ...;User ID=...;Password=...;";
            if (TxtUserName.Text != "" && Password.Text != "" && ConfirmPassword.Text != "")
            {
                if (Password.Text.ToString().Trim().ToLower() == ConfirmPassword.Text.ToString().Trim().ToLower())
                {
                    string UserName = TxtUserName.Text;
                    string Password = Cryptography.Encrypt(ConfirmPassword.Text.ToString());
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Usuarios(Usuarios, Password) VALUES('" + UserName + "','" + Password + "')", connection);
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    Response.Redirect("LogInForm.aspx", true);

                }
                else
                {
                    PasswordsNotMatch.Visible = true;
                }
            }
            else
            {
                EmptyBoxRgt.Visible = true;
            }
        }

        protected void VerificationButton_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();

            connection.ConnectionString = @"Data Source=...; Initial Catalog= ...;User ID=...;Password=...;";

            string Name = TxtName.Text;
            string LastName = TxtLastName.Text;
            string CompleteName = Name + " " + LastName;
            SqlDataReader reader;

            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT Nombre FROM Gen_Usuarios WHERE Nombre = '" + Name + " " + LastName + "'", connection);
            reader = cmd.ExecuteReader();
            if (VerificacionName.Text != "" && VerificationLastName.Text != "")
            {
                if (reader.Read())
                {
                    connection.Close();
                    Hide.Visible = false;
                    Begin.Visible = false;
                    ErrorMessage.Visible = false;
                    Show.Visible = true;
                    WelcomeMessage.Visible = true;
                    Jump.Visible = true;
                    PasswordsNotMatch.Visible = false;
                    EmptyBox.Visible = false;
                }
                else
                {
                    ErrorMessage.Visible = true;
                }
            }
            else
            {
                EmptyBox.Visible = true;
            }
        }
    }
}
