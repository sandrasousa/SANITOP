using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EXSanitop
{
    public partial class Index : System.Web.UI.Page
    {
        //Conexão à Base de Dados
                                    //Servidor                              //Base de Dados
        string connectionString = @"Data Source=LAPTOP-6IBSOVO8\SQLEXPRESS; Initial Catalog = SANITOP; Integrated Security=True;";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                                                           //Query para ir buscar os dados
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From dbo.TBUtilizador", sqlCon);
                DataTable dtb = new DataTable();
                sqlDa.Fill(dtb);
                User.DataSource = dtb;
                User.DataBind();
            }
        }

        protected void BtnSelect_Click(object sender, EventArgs e)
        {
            int IDUtilizador = Convert.ToInt32((sender as LinkButton).CommandArgument);
        }
    }
}