<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUpPage.aspx.cs" Inherits="SignUpPage" %>

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
             <table class="auto-style1">  
    <tr>  
    <td>  
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="username" runat="server" required="true"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>  
    </td>  
    <td>  
    <asp:TextBox ID="EmailID" runat="server" TextMode="Email"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>  
    <td>  
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label></td>  
    <td>  
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox></td>  
    </tr>  
    <tr>  
    <td>  
    <asp:Label ID="lblMsg" runat="server"></asp:Label></td>  
    <td>  
   </td>  
    </tr>  
   
    <tr>  
    <td>  

    </td>  
    <td>  
    <br />  
    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="Button1_Click"/> 
        <asp:Button ID="btn2" runat="server" Text="View Details" CssClass="btn btn-primary" OnClick="btn2_Click" />
            </td>  
    </tr>  
    </table>  
     </div>
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        </div>
    </form>
</body>
</html>
