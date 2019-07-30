using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppCRUDPubs.DAL
{
    public class DALTitle
    {
        string connectionString = "";

        public DALTitle()
        {
            connectionString = ConfigurationManager.ConnectionStrings["PubsConnectionString"].ConnectionString;
        }

            [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Titles> SelectAll()
        {
            // Variavel para armazenar um livro
            Modelo.Titles aTitle;
            // Cria Lista Vazia
            List<Modelo.Titles> aListTitles = new List<Modelo.Titles>();
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand cmd = conn.CreateCommand();
            // define SQL do comando
            cmd.CommandText = "Select * from Titles";
            // Executa comando, gerando objeto DbDataReader
            SqlDataReader dr = cmd.ExecuteReader();
            // Le titulo do livro do resultado e apresenta no segundo rótulo
            if (dr.HasRows)
            {

                while (dr.Read()) // Le o proximo registro
                {
                    // Cria objeto com dados lidos do banco de dados
                    aTitle = new Modelo.Titles(dr["title_id"].ToString(), dr["title"].ToString(), dr["pub_id"].ToString());
                    // Adiciona o livro lido à lista
                    aListTitles.Add(aTitle);
                }
            }
            // Fecha DataReader
            dr.Close();
            // Fecha Conexão
            conn.Close();

            return aListTitles;

        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void Delete(Modelo.Titles obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("DELETE FROM Titles WHERE Title_ID = @title_id", conn);
            cmd.Parameters.AddWithValue("@title_id", obj.title_id);

            // Executa Comando
            cmd.ExecuteNonQuery();

        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.Titles obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("INSERT INTO Titles(title_id, title, pub_id) VALUES(@title_id, @title, @pub_id)", conn);
            cmd.Parameters.AddWithValue("@title_id", obj.title_id);
            cmd.Parameters.AddWithValue("@title", obj.title);
            cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);

            // Executa Comando
            cmd.ExecuteNonQuery();

        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void Update(Modelo.Titles obj)
        {
            // Cria Conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);
            // Abre conexão com o banco de dados
            conn.Open();
            // Cria comando SQL
            SqlCommand com = conn.CreateCommand();
            // Define comando de exclusão
            SqlCommand cmd = new SqlCommand("UPDATE Titles SET title = @title, pub_id = @pub_id WHERE Title_ID = @title_id", conn);
            cmd.Parameters.AddWithValue("@title_id", obj.title_id);
            cmd.Parameters.AddWithValue("@title", obj.title);
            cmd.Parameters.AddWithValue("@pub_id", obj.pub_id);

            // Executa Comando
            cmd.ExecuteNonQuery();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.Titles> Select(string title_id) {
            // Variável para armazenar um livro
            Modelo.Titles aTitle;

            // Cria lista vazia
            List<Modelo.Titles> aListTitles = new List<Modelo.Titles>();

            // Cria conexão com banco de dados
            SqlConnection conn = new SqlConnection(connectionString);

            // Abre conexão com banco de dados
            conn.Open();

            // Cria comando SQL
            SqlCommand cmd = conn.CreateCommand();

            // Define SQL do comando
            cmd.CommandText = "Slect * from Titles Where title_id = @title_id";
            cmd.Parameters.AddWithValue("@title_id", title_id);

            // Executa comando, gerando objeto DbDataReader
            SqlDataReader dr = cmd.ExecuteReader();

            // Lê título do livro do resultado e apresenta no segundo rótulo
            if (dr.HasRows) {
                while (dr.Read()){ // Lê o próximo registro
                    // Cria objeto com dados lidos do banco de dados
                    aTitle = new Modelo.Titles(dr["title_id"].ToString(), dr["title"].ToString(), dr["pub_id"].ToString());

                    // Adiciona o livro à listra
                    aListTitles.Add(aTitle);
                }
            }
            // Fecha DataReader
            dr.Close();
            // Fecha Conexão
            conn.Close();

            return aListTitles;
        }



    }
}