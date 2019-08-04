using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCRUDPubs
{
    public partial class WebFormTitleNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton(object sender, EventArgs e)
        {
            Modelo.Titles aTitles;
            DAL.DALTitle aDALTitle;

            // Instancia um objeto de livro com as informações fornecidas
            aTitles = new Modelo.Titles(    codigo.Text, 
                                            nome.Text,
                                            editora.Text,
                                            type.Text,
                                            Convert.ToDouble(preco.Text),
                                            decricao.Text,
                                            Convert.ToDateTime(dataPub.Text)
                                            );

            // Instancia objeto da camada de negócio
            aDALTitle = new DAL.DALTitle();

            // Chama método de insert passando o objeto preenchido
            aDALTitle.Insert(aTitles);

            // Chama página de títulos
            Response.Redirect("~\\WebFormTitle.aspx");
        }
    }
}