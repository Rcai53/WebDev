using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagerSystem
{
    public partial class StudentScore : System.Web.UI.Page
    {
        ScoreClassDataContext data = new ScoreClassDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = from s in data.Score orderby s.Student_Class select s;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                GridView1.DataSource = from s in data.Score where s.Student_Number == TextBox1.Text select s;
            }
            else if (TextBox2.Text != "")
            {
                GridView1.DataSource = from s in data.Score where s.Student_Name == TextBox2.Text select s;
            }
            else if (TextBox3.Text != "")
            {
                GridView1.DataSource = from s in data.Score where s.Student_Class == TextBox3.Text select s;
            }
            else
            {
                GridView1.DataSource = from s in data.Score select s;
            }
            GridView1.DataBind();
        }
    }
}