<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Second.aspx.cs" Inherits="Second" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table> 
        <tr><td><h2>Application Of Ajax</h2></td></tr>
        
        <tr><td>

       <asp:TextBox ID="tbxDate" runat="server" ></asp:TextBox>  
            
            <ajax:TextBoxWatermarkExtender ID="wattxt" runat="server" WatermarkText="put your dob" TargetControlID="tbxDate"></ajax:TextBoxWatermarkExtender>
            <ajax:CalendarExtender ID="call1" runat="server" TargetControlID="tbxDate"></ajax:CalendarExtender>
            </td> <td></td></tr>  </table>
</asp:Content>

