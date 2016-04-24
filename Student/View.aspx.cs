using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Student_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            int nID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            StudentClass Stc = new StudentClass();
            Label1.Text = Stc.GetNewsShow(nID);
        }
    }
}
