using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using static System.Console;


namespace WebApplication5
{
    public partial class Addclubs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public string Name;
        public double PlayDate;
        public int Num;
        public string clubName;
        public string cityName;
        public int Regnumber;
        public string addressName;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddPlayerBut.Visible = false;

                PlayerLab.Visible = false;
                PlyerNam.Visible = false;
                PlayerNum.Visible = false;
                PlyerNum.Visible = false;
                DOB.Visible = false;
                DOB1.Visible = false;
                SavePlayBut.Visible = false;
                CancelPlayBut.Visible = false;

                       
            }

            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            const string FILENAME = "Clubs.txt";
            Addclubs clubs = new Addclubs();
            FileStream outFile = new FileStream(FILENAME, FileMode.Create, FileAccess.Write);
            StreamWriter writer = new StreamWriter(outFile);
             
            clubs.clubName = ClubUser.Club;
            clubs.cityName = ClubUser.City;
            clubs.Regnumber = Convert.ToInt32(Regnumbtxt.Text);
            clubs.addressName = Address.Text;
           
            //SqlCommand cmd = new SqlCommand("insert into Clubs values( '" + ClubUser.Club + "', '" + ClubUser.City + "', '" + Regnumbtxt.Text + "','" + Address.Text + "')", con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            AddPlayerBut.Visible = true;


            Regnumbtxt.Text = "";
            Address.Text = "";
            ClubUser.City = "";
            ClubUser.Club = "";


            //Regnumbtxt.ReadOnly = true;
            //Address.ReadOnly = true;


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Regnumbtxt.Text = "";
            Address.Text = "";
            ClubUser.City = "";
            ClubUser.Club = "";


        }

        protected void Button3_Click(object sender, EventArgs e) 
        {
            PlayerLab.Visible = true;
            PlyerNam.Visible = true;
            PlayerNum.Visible = true;
            PlyerNum.Visible = true;
            DOB.Visible = true;
            DOB1.Visible = true;
            SavePlayBut.Visible = true;
            CancelPlayBut.Visible = true;

        }

        
        
        protected void Button4_Click(object sender, EventArgs e) 
        {
            //Addclubs p1 = new Addclubs();
            //p1.Name = PlyerNam.Text;
            //p1.PlayDate = Convert.ToDouble(DOB1.Text);
            //p1.Num =Convert.ToInt32(PlyerNum.Text);

            Addclubs player = new Addclubs();
            player.Name = PlyerNam.Text;
            player.PlayDate = Convert.ToDouble(DOB1.Text);
            player.Num = Convert.ToInt32(PlyerNum.Text);


            PlyerNam.Text = "";
            DOB1.Text = "";
            PlyerNum.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            PlyerNam.Text = "";
            DOB1.Text = "";
            PlyerNum.Text = "";
        }

    }
}