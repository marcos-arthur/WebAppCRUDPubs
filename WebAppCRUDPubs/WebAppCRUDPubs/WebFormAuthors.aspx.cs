using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPubs
{
    public partial class WebFormAuthors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Editar(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Editar") {
                string codigo;

                int index = Convert.ToInt32(e.CommandArgument);

                codigo = GridviewAuthors.Rows[index].Cells[0].Text;

                Session["author_id"] = codigo;

                Response.Redirect("~\\WebFormAuthorsEdit.aspx");
            }
            if(e.CommandName == "Inserir") { //Configurar inserção para o autor
                Response.Redirect("~\\WebFormTitleNew.aspx");
            }
        }
    }
}