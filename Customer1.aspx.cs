using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Customer1_Table_DbSource.SelectParameters["Name"].DefaultValue = TextBox1.Text;
        Customer1_Table_DbSource.SelectParameters["Total_Sold"].DefaultValue = TextBox2.Text;
    }
}