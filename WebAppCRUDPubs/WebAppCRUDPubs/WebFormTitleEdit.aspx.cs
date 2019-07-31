using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPubs
{
    public partial class WebFormTitleEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Deleted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            string codigo;
            Modelo.Titles aTitles;
            DAL.DALTitle aDALTitles;

            // Copia o conteúdo da primeira célula da linha -> Código do livro
            codigo = Detalhes.Rows[0].Cells[1].Text;

            // Instancia um objeto do livro vazio
            aTitles = new Modelo.Titles();
            aTitles.title_id = codigo; //atribui apenas o ID

            // Instancia objeto da camada de negócio
            aDALTitles = new DAL.DALTitle();

            // Chama método de delete passando o objeto apenas com o ID preenchido
            aDALTitles.Delete(aTitles);
            
            Response.Redirect("~\\WebFormTitle.aspx");
        }
    }
}