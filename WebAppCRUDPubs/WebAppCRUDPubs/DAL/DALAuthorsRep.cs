using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppCRUDPubs.DAL
{
    public class DALAuthorsRep
    {
        string connectionString = "";

        public DALAuthorsRep()
        {
            connectionString = ConfigurationManager.ConnectionStrings["PubsConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Modelo.AuthorsRep> SelectAll()
        {
            Modelo.AuthorsRep aAuthorsRep;

            List<Modelo.AuthorsRep> aListAuthorsRep = new List<Modelo.AuthorsRep>();

            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand cmd = conn.CreateCommand();

            cmd.CommandText = "Select * from Authors";

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    aAuthorsRep = new Modelo.AuthorsRep(
                        dr["au_id"].ToString(), 
                        dr["au_fname"].ToString(), 
                        dr["au_lname"].ToString(), 
                        dr["phone"].ToString(), 
                        dr["address"].ToString(), 
                        dr["city"].ToString(), 
                        dr["state"].ToString(), 
                        dr["zip"].ToString(), 
                        AlternadorB(dr["contract"].ToString())
                    );

                    aListAuthorsRep.Add(aAuthorsRep);
                }
            }

            dr.Close();

            conn.Close();

            return aListAuthorsRep;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void Delete(Modelo.AuthorsRep obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand com = conn.CreateCommand();

            SqlCommand cmd = new SqlCommand("Delete From Authors Where au_id = @au_id", conn);
            cmd.Parameters.AddWithValue("@au_id", obj.au_id);

            cmd.ExecuteNonQuery();
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.AuthorsRep obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand com = conn.CreateCommand();

            SqlCommand cmd = new SqlCommand("Insert Into AuthorsRep(au_id, au_fname, au_lname, phone, address, city, state, zip ,contract) Values(@au_id, @au_fname, @au_lname, @phone, @address, @city, @state, @zip, @contract)", conn);

            cmd.Parameters.AddWithValue("@au_id", obj.au_id);
            cmd.Parameters.AddWithValue("@au_fname", obj.au_fname);
            cmd.Parameters.AddWithValue("@au_lname", obj.au_lname);
            cmd.Parameters.AddWithValue("@phone", obj.phone);
            cmd.Parameters.AddWithValue("@address", obj.address);
            cmd.Parameters.AddWithValue("@city", obj.city);
            cmd.Parameters.AddWithValue("@state", obj.state);
            cmd.Parameters.AddWithValue("@zip", obj.zip);
            cmd.Parameters.AddWithValue("@contract", obj.contract);
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void Update(Modelo.AuthorsRep obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand com = conn.CreateCommand();

            SqlCommand cmd = new SqlCommand("Update AuthorsRep Set au_id = @au_id, au_fname = @au_fname, au_lname = @au_lname, phone = @phone, address = @address, city = @city, state = @state)", conn);

            cmd.Parameters.AddWithValue("@au_id", obj.au_id);
            cmd.Parameters.AddWithValue("@au_fname", obj.au_fname);
            cmd.Parameters.AddWithValue("@au_lname", obj.au_lname);
            cmd.Parameters.AddWithValue("@phone", obj.phone);
            cmd.Parameters.AddWithValue("@address", obj.address);
            cmd.Parameters.AddWithValue("@city", obj.city);
        }

        internal bool AlternadorB(string c) {
            bool d = (c == "True"); 
            return d;
        }
    }
}