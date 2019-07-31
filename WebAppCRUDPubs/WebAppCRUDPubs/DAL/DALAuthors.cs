using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppCRUDPubs.DAL
{
    public class DALAuthors
    {
        string connectionString = "";
        
        public DALAuthors(){
            connectionString = ConfigurationManager.ConnectionStrings["PubsConnectionString"].ConnectionString;
        }
    
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Authors> SelectAll() {
            Modelo.Authors aAuthors;

            List<Modelo.Authors> aListAuthors = new List<Modelo.Authors>();

            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand cmd = conn.CreateCommand();
        }
    }
}