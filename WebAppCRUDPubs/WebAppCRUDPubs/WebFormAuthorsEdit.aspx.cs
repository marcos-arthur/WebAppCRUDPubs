using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPubs
{
    public partial class WebFormAuthorsEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Deleted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            string codigo;
            Modelo.Authors aAuthors;
            DAL.DALAuthors aDALAuthors;

            codigo = Detalhes.Rows[0].Cells[1].Text;

            aAuthors = new Modelo.Authors();
            aAuthors.author_id = codigo;

            aDALAuthors = new DAL.DALAuthors();

            aDALAuthors.Delete(aAuthors);

            Response.Redirect("~\\WebFormAuthors.aspx");
        }
    }
}