using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPubs
{
    public partial class WebFormAuthorsNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton(object sender, EventArgs e)
        {
            Modelo.Authors aAuthors;
            DAL.DALAuthors aDALAuthor;

            aAuthors = new Modelo.Authors(codigo.Text, nome.Text, lName.Text, phone.Text, address.Text, city.Text, state.Text);

            aDALAuthor = new DAL.DALAuthors();

            aDALAuthor.Insert(aAuthors);

            Response.Redirect("~\\WebFormAuthors.aspx");
        }
    }
}