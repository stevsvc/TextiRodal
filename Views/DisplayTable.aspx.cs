using DisplayTableOriginal.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisplayTableOriginal.Views
{
    public partial class DisplayTable : System.Web.UI.Page
    {
        StringBuilder htmlTable = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindData();
        }

        private void BindData()
        {
            SqlDataAdapter da;
            //DataSet ds = new DataSet();

            SqlConnection con = new SqlConnection();
            SqlDataReader reader;

            con.ConnectionString = @"Data Source=...; Initial Catalog=...;User ID=...;Password=...;";
            SqlCommand cmd = new SqlCommand("SELECT * FROM Adm_Ciudades", con);
            con.Open();
            reader = cmd.ExecuteReader();
            List<City> cityList = new List<City>();

            while (reader.Read())
            {
                City city = new City();
                city.Id_Empresa = Convert.ToInt16(reader.GetValue(0));
                city.Cod_Provincia = reader.GetValue(1).ToString();
                city.Cod_Ciudad = reader.GetValue(2).ToString();
                city.Ciudad = reader.GetValue(3).ToString();
                cityList.Add(city);
            }
            //da = new SqlDataAdapter(cmd);
            //da.Fill(ds);
            //cmd.ExecuteNonQuery();
            con.Close();

            htmlTable.Append("<table border='1'>");
            htmlTable.Append("<tr style='background-color:green; color: White;'><th>ID Empresa</th><th>Num_Orden</th><th>Codigo</th><th>Contact No</th></tr>");
            
                if (cityList.Count > 0)
                {

                    for (int i = 0; i < cityList.Count; i++)
                    {
                        htmlTable.Append("<tr style='color: White;'>");
                        htmlTable.Append("<td>" + cityList[i].Id_Empresa + "</td>");
                        htmlTable.Append("<td>" + cityList[i].Cod_Provincia + "</td>");
                        htmlTable.Append("<td>" + cityList[i].Ciudad + "</td>");
                        htmlTable.Append("</tr>");
                    }
                    htmlTable.Append("</table>");
                    DBDataPlaceHolder.Controls.Add(new Literal { Text = htmlTable.ToString() });
                }
                else
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                    htmlTable.Append("</tr>");
                }
            
        }
    }
}
