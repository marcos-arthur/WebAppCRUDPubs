using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPubs
{
    public partial class WebFormTitle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Editar(object sender, GridViewCommandEventArgs e)
        {
            //Verifica se o comando é "Editar"
            if(e.CommandName == "Editar") {
                string codigo;

                // Lê o número da linha selecionada
                int index = Convert.ToInt32(e.CommandArgument);

                // Copia o conteúdo da primeira célula da linha -> Código do livro
                codigo = GridView1.Rows[index].Cells[0].Text;

                // Grava código do Livro na sessão
                Session["title_id"] = codigo;

                // Chama a tela de edição
                Response.Redirect("~\\WebFormTitleEdit.aspx");
            }


        }
    }
}