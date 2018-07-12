using System;
using DisplayTableOriginal.Models;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptionandDecryption;

namespace DisplayTableOriginal.Views
{
    public partial class LogInForm : System.Web.UI.Page
    {

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            SqlDataReader reader;
            string Password = "";
            bool IsExist = false;
            connection.ConnectionString = @"Data Source=186.101.103.197; Initial Catalog= pedidos_rodal;User ID=rodal;Password=Mishell2017;";
            connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT Password FROM Usuarios WHERE Usuarios = '" + TxtUserName.Text + "'", connection);
            reader = cmd.ExecuteReader();
            if (UserNameLabel.Text != "" && PasswordLabel.Text != "")
            {
                if (reader.Read())
                {
                    Password = reader.GetValue(0).ToString();
                    IsExist = true;
                }
                connection.Close();
                if (IsExist)
                {
                    if (Cryptography.Decrypt(Password).Equals(TxtPassword.Text))
                    {
                        Response.Redirect("DisplayPedido.aspx", true);
                    }
                }
            }
            else
            {
                EmptyBox.Visible = true;
            }
        }
    }
}