<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePanel.aspx.cs" Inherits="UpdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div >
            <asp:updatepanel id="update" runat="server" >
                <ContentTemplate>
                    <asp:Button ID="btn1" Text="Inside Panel" runat="server" OnClick="btn1_Click" /><br />
                    <asp:Label ID="lbl1" runat="server"></asp:Label><br />

                </ContentTemplate>
            </asp:updatepanel>
            
        </div>
        <div>
            <asp:Button Text="Outside Panel" ID="btn2" runat="server" OnClick="btn2_Click" /><br />
            <asp:Label ID="lbl2" runat="server"></asp:Label><br />
        </div>
         <div>
            <table>
                <tr>   <td>  

                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:LinkButton ID="LnkBtnBooks" runat="server" OnClick="LnkBtnBooks_Click">Show Books</asp:LinkButton>
                            <asp:UpdateProgress ID="UpdateProgress2" runat="server" 
                                AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/waiter.gif"/>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <ul>
                                       
                                   </ul>
                                </HeaderTemplate>
                                <ItemTemplate>
                                     <asp:Image  ID="img1" runat="server" ImageUrl="<%# Container.DataItem %>"/>
                                   
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                       </td></tr>

            </table>


        </div>
    </form>
</body>
</html>
