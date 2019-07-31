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

            cmd.CommandText = "Select * from Authors";

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows) {
                while (dr.Read()) {
                    aAuthors = new Modelo.Authors(dr["au_id"].ToString(), dr["au_fname"].ToString(), dr["au_lname"].ToString(), dr["phone"].ToString(), dr["address"].ToString(), dr["city"].ToString(), dr["state"].ToString());

                    aListAuthors.Add(aAuthors);
                }
            }

            dr.Close();

            conn.Close();

            return aListAuthors;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void Delete(Modelo.Authors obj) {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand com = conn.CreateCommand();

            SqlCommand cmd = new SqlCommand("Delete From Authors Where au_id = @au_id", conn);
            cmd.Parameters.AddWithValue("@au_id", obj.author_id);

            cmd.ExecuteNonQuery();
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void Insert(Modelo.Authors obj) {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand com = conn.CreateCommand();

            SqlCommand cmd = new SqlCommand("Insert Into Authors(au_id, au_fname, au_lname, phone, address, city, state) Values(@au_id, @au_fname, @au_lname, @phone, @address, @city, @state)", conn);

            cmd.Parameters.AddWithValue("@au_id", obj.author_id);
            cmd.Parameters.AddWithValue("@au_fname", obj.author_name);
            cmd.Parameters.AddWithValue("@au_lname", obj.author_last_name);
            cmd.Parameters.AddWithValue("@phone", obj.phone);
            cmd.Parameters.AddWithValue("@address", obj.address);
            cmd.Parameters.AddWithValue("@city", obj.city);
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void Update(Modelo.Authors obj)
        {
            SqlConnection conn = new SqlConnection(connectionString);

            conn.Open();

            SqlCommand com = conn.CreateCommand();

            SqlCommand cmd = new SqlCommand("Update Authors Set au_id = @au_id, au_fname = @au_fname, au_lname = @au_lname, phone = @phone, address = @address, city = @city, state = @state)", conn);

            cmd.Parameters.AddWithValue("@au_id", obj.author_id);
            cmd.Parameters.AddWithValue("@au_fname", obj.author_name);
            cmd.Parameters.AddWithValue("@au_lname", obj.author_last_name);
            cmd.Parameters.AddWithValue("@phone", obj.phone);
            cmd.Parameters.AddWithValue("@address", obj.address);
            cmd.Parameters.AddWithValue("@city", obj.city);
        }

    }
}