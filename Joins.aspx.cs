using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class Joins : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownJoinTable_SelectedIndexChanged(object sender, EventArgs e)
    {
        string joinType = DropDownJoinTable.SelectedValue;

        switch (joinType)
        {
            case "LeftJoin":
                DataView ljData = (DataView)LeftJoin_DbSource.Select(DataSourceSelectArguments.Empty);
                Dyanmic_JoinGridView.DataSource = ljData;
                Dyanmic_JoinGridView.AutoGenerateColumns = true;
                Dyanmic_JoinGridView.DataBind();
                break;
            case "RightJoin":
                DataView rjData = (DataView)RightJoin_DbSource.Select(DataSourceSelectArguments.Empty);
                Dyanmic_JoinGridView.DataSource = rjData;
                Dyanmic_JoinGridView.AutoGenerateColumns = true;
                Dyanmic_JoinGridView.DataBind();
                break;
            case "FullJoin":
                DataView fjData = (DataView)FullJoin_DbSource.Select(DataSourceSelectArguments.Empty);
                Dyanmic_JoinGridView.DataSource = fjData;
                Dyanmic_JoinGridView.AutoGenerateColumns = true;
                Dyanmic_JoinGridView.DataBind();
                break;
            default:
                DataView ijData = (DataView)InnerJoin_DbSource.Select(DataSourceSelectArguments.Empty);
                Dyanmic_JoinGridView.DataSource = ijData;
                Dyanmic_JoinGridView.AutoGenerateColumns = true;
                Dyanmic_JoinGridView.DataBind();
                break;
        }
    }
}