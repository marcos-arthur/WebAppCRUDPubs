using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPubs.Modelo
{
    public class AuthorsRep
    {
       
            public string au_id { get; set; }
            public string au_lname { get; set; }
            public string au_fname { get; set; }
            public string phone { get; set; }
            public string address { get; set; }
            public string city { get; set; }
            public string state { get; set; }
            public string zip { get; set; }
            public bool contract { get; set; }

            // Construtor
            public AuthorsRep()
            {
                this.au_id = ""; this.au_lname = ""; this.au_fname = "";
                this.phone = ""; this.address = ""; this.city = "";
                this.state = ""; this.zip = ""; this.contract = false;
            }

            public AuthorsRep(
                string au_id, string au_lname, string au_fname,
                string phone, string address, string city,
                string state, string zip, bool contract)
            {
                this.au_id = au_id; this.au_lname = au_lname; this.au_fname = au_fname;
                this.phone = phone; this.address = address; this.city = city;
                this.state = state; this.zip = zip; this.contract = contract;
            }
        }
}