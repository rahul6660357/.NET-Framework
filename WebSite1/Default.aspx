<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
    <table> 
        <tr><td><h2>Application Of Ajax</h2></td></tr>
        
        <tr><td>

       <asp:TextBox ID="tbxDate" runat="server" ></asp:TextBox>  
            
            <ajax:TextBoxWatermarkExtender ID="wattxt" runat="server" WatermarkText="put your dob" TargetControlID="tbxDate"></ajax:TextBoxWatermarkExtender>
            <ajax:CalendarExtender ID="call1" runat="server" TargetControlID="tbxDate"></ajax:CalendarExtender>
            </td> <td></td></tr>  </table>
        <h2></h2>
    </div>
    </form>
</body>
</html>
