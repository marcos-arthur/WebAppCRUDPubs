using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppCRUDPubs.Modelo
{
    public class Titles
    {
        public string title_id { get; set; }
        public string title { get; set; }
        public string type { get; set; }
        public string pub_id { get; set; }
        public double price { get; set; }
        public double advance { get; set; }
        public int royalty { get; set; }
        public int ytd_sales { get; set; }
        public string notes { get; set; }
        public DateTime pubdate { get; set; }

        // Construtor
        public Titles()
        {
            this.title_id = "";
            this.title = "";
            this.pub_id = "";
            this.type = "";
            this.price = 0;
            this.advance = 0;
            this.royalty = 0;
            this.ytd_sales = 0;
            this.notes = "";
            this.pubdate = new DateTime();
        }
        public Titles(string atitle_id, string atitle, string apub_id, string atype, double aprice, string anotes, DateTime apubdate)
        {
            this.title_id = atitle_id;
            this.title = atitle;
            this.pub_id = apub_id;
            this.price = aprice;
            this.type = atype;
            //this.advance = aadvance;
            //this.royalty = aroyalty;
            //this.ytd_sales = aytd_sales;
            this.notes = anotes;
            this.pubdate = apubdate;
        }



        /*public Titles()
        {
            this.title_id = "";
            this.title = "";
            this.pub_id = "";
        }
        public Titles(string atitle_id, string atitle, string apub_id)
        {
            this.title_id = atitle_id;
            this.title = atitle;
            this.pub_id = apub_id;
        }*/


    }
}