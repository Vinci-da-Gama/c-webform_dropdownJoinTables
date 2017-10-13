<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Joins.aspx.cs" Inherits="Joins" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title></title>
        <style type="text/css">
            .auto-style1 {
                width: 100%;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>

            </div>
            <a href="Default.aspx">
               Go Default Page
            </a>

            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Customers0"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustId" DataSourceID="Customers0_DbSource" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="CustId" HeaderText="Customer Id" InsertVisible="False" ReadOnly="True" SortExpression="CustId" />
                                <asp:TemplateField HeaderText="Customer_Name" SortExpression="Customer_Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Customer Name Is Required."></asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="orderId" HeaderText="orderId" SortExpression="orderId" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="Customers0_DbSource" runat="server" ConnectionString="<%$ ConnectionStrings:CodeFirst_DBTest2ConnectionString5 %>" SelectCommand="SELECT [CustId], [Customer_Name], [orderId] FROM [Customers0]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="OrderDetails0"></asp:Label>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="orderId" DataSourceID="OrderDetails0_DbSource" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" ReadOnly="True" SortExpression="orderId" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" />
                                <asp:BoundField DataField="Number_Bought" HeaderText="Number_Bought" SortExpression="Number_Bought" />
                                <asp:BoundField DataField="Single_Price" HeaderText="Single_Price" SortExpression="Single_Price" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="OrderDetails0_DbSource" runat="server" ConnectionString="<%$ ConnectionStrings:CodeFirst_DBTest2ConnectionString6 %>" SelectCommand="SELECT [orderId], [Item_Name], [Number_Bought], [Single_Price] FROM [OrderDetails0]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Inner_Join"></asp:Label>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="InnerJoin_DbSource" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" />
                                <asp:BoundField DataField="Number_Bought" HeaderText="Number_Bought" SortExpression="Number_Bought" />
                                <asp:BoundField DataField="Single_Price" HeaderText="Single_Price" SortExpression="Single_Price" />
                                <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" SortExpression="Total_Price" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="InnerJoin_DbSource" runat="server" ConnectionString="<%$ ConnectionStrings:CodeFirst_DBTest2ConnectionString7 %>" SelectCommand="SELECT [Customer_Name], [Item_Name], [Number_Bought], [Single_Price], [Total_Price] FROM [CoInner]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Left_Join"></asp:Label>
                        <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="LeftJoin_DbSource" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" />
                                <asp:BoundField DataField="Number_Bought" HeaderText="Number_Bought" SortExpression="Number_Bought" />
                                <asp:BoundField DataField="Single_Price" HeaderText="Single_Price" SortExpression="Single_Price" />
                                <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" SortExpression="Total_Price" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="LeftJoin_DbSource" runat="server" ConnectionString="<%$ ConnectionStrings:CodeFirst_DBTest2ConnectionString8 %>" SelectCommand="SELECT [Customer_Name], [Item_Name], [Number_Bought], [Single_Price], [Total_Price] FROM [CoLeft]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Right_Join"></asp:Label>
                        <asp:GridView ID="GridView5" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="RightJoin_DbSource" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" />
                                <asp:BoundField DataField="Number_Bought" HeaderText="Number_Bought" SortExpression="Number_Bought" />
                                <asp:BoundField DataField="Single_Price" HeaderText="Single_Price" SortExpression="Single_Price" />
                                <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" SortExpression="Total_Price" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="RightJoin_DbSource" runat="server" ConnectionString="<%$ ConnectionStrings:CodeFirst_DBTest2ConnectionString9 %>" SelectCommand="SELECT * FROM [CoRight]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Full_Join"></asp:Label>
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="FullJoin_DbSource">
                            <Columns>
                                <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" />
                                <asp:BoundField DataField="Number_Bought" HeaderText="Number_Bought" SortExpression="Number_Bought" />
                                <asp:BoundField DataField="Single_Price" HeaderText="Single_Price" SortExpression="Single_Price" />
                                <asp:BoundField DataField="Total_Price" HeaderText="Total_Price" SortExpression="Total_Price" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="FullJoin_DbSource" runat="server" ConnectionString="<%$ ConnectionStrings:CodeFirst_DBTest2ConnectionString10 %>" SelectCommand="SELECT * FROM [CoFull]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <div>
                <asp:DropDownList ID="DropDownJoinTable" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownJoinTable_SelectedIndexChanged">
                    <asp:ListItem Text="InnerJoin" />
                    <asp:ListItem Text="LeftJoin" />
                    <asp:ListItem Text="RightJoin" />
                    <asp:ListItem Text="FullJoin" />
                </asp:DropDownList>
                <asp:GridView ID="Dyanmic_JoinGridView" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </div>
        </form>
    </body>

    </html>