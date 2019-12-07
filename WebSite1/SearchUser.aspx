<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchUser.aspx.cs" Inherits="SearchUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="label" runat="server" Text="Email:-"></asp:Label>
            <asp:TextBox ID="txtb1" runat="server"></asp:TextBox>
            <br />
            <asp:Button Text="Get Details" ID="btn1" runat="server" class=" btn btn-primary" OnClick="btn1_Click" />
        </div>
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <%# Container.DataItem %>
                </ItemTemplate>
            </asp:DataList>
            <asp:GridView ID="gv2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="st_id" OnRowEditing="editgv" OnRowUpdating="rowupdate" OnRowCancelingEdit="Onrowcanceling" OnRowDeleting="Onrowdelete">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="st_id" HeaderText="Student ID" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="password" HeaderText="Password" />
                    <asp:CommandField HeaderText="Edit/Delete" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>

        </div>
        <div>
            <asp:Table ID="table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" Text="Id" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lbl1" Text="Email" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtbox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="label2" runat="server" Text="password"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtbox2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="Update" Text="UPDATE" runat="server" OnClick="btn2_Click" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <br />
        <asp:Label ID="Lblmsg" runat="server"></asp:Label>

    </form>
</body>
</html>
