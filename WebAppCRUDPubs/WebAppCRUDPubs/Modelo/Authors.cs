using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPubs.Modelo
{
    public class Authors
    {
        public string author_id { get; set; }
        public string author_name { get; set; }
        public string author_last_name { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string zip { get; set; }
        public bool contract { get; set; }

        // Construtor
        public Authors()
        {
            author_id = "";
            author_name = "";
            author_name = "";
            phone = "";
            address = "";
            city = "";
            state = "";
            zip = "xxxxxx";
            contract = false;
        }

        public Authors( string aI, 
                        string aN, 
                        string aLN, 
                        string p, 
                        string a, 
                        string c, 
                        string s
                      )
        {
            author_id = aI;
            author_name = aN;
            author_last_name = aLN;
            phone = p;
            address = a;
            city = c;
            state = s;
        }
    }
}