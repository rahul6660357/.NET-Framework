<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataBinding.aspx.cs" Inherits="DataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <%# Container.DataItem %>
                </ItemTemplate>

            </asp:Repeater>

            <asp:DataList ID="dataList1" runat="server" Caption="Cities Name" HorizontalAlign="Justify" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <%# Container.DataItem %>
                </ItemTemplate>

            </asp:DataList>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


            <br />
            <asp:GridView ID="gv1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
