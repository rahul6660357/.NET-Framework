<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="0" style="height:auto;width:100%;">
        <tr><td colspan="2">  <asp:Image ID="imgadv1" runat="server" ImageUrl="~/image/Adv1.gif" /> </td>  </tr>
          <tr>  <td><h3>Menu</h3>
                   <asp:HyperLink ID="hyp1" runat="server" NavigateUrl="~/Default.aspx">Default</asp:HyperLink><br />
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Services</asp:HyperLink><br />
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink><br />
                 <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">Contact</asp:HyperLink><br />
                 <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">Product</asp:HyperLink><br />

                   
                </td> <td>Main Content</td>  </tr>
           <tr><td colspan="2"> <h3>All Rights Reserved Computer World</h3> </td>  </tr>

    </table>



    </div>
    </form>
</body>
</html>
