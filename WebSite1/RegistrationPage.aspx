<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div >
            <div class="justify-content-center text-center w-50">
             <div class="d-flex">   <asp:Label ID="username" Text="Enter your name:-" runat="server" ></asp:Label>
                <asp:TextBox runat="server" ID="user" Height="16px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="user" Display="Dynamic">

                                                                                  </asp:RequiredFieldValidator>


                </div>
                 <div class="d-flex">   <asp:Label ID="Label2" Text="Password" runat="server"></asp:Label>
                <asp:TextBox runat="server" ID="pass" Height="16px" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="pass" Display="Dynamic">

                                                                                  </asp:RequiredFieldValidator>
                </div>
                 <div class="d-flex">   <asp:Label ID="Label1" Text="confirm password" runat="server"></asp:Label>
                <asp:TextBox runat="server" ID="TextBox5" Height="16px" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox5" Display="Dynamic">

                                          </asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="your password did not match" ControlToCompare="pass" ControlToValidate="TextBox5" Display="Dynamic"></asp:CompareValidator> 

                </div>
                
                 <div class="d-flex">   <asp:Label ID="Label3" Text="Address" runat="server" ></asp:Label>
                <asp:TextBox runat="server" ID="address" Height="16px" ></asp:TextBox>
                </div>
                 <div class="d-flex">   <asp:Label ID="Label4" Text="Phone Number" runat="server" ></asp:Label>
                <asp:TextBox runat="server" ID="phone" Height="16px" TextMode="Phone"></asp:TextBox>
                </div>

                  <div class="d-flex">   <asp:Label ID="email" Text="Email" runat="server" ></asp:Label>
                <asp:TextBox runat="server" ID="emailid" Height="16px" TextMode="Email"></asp:TextBox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="emailid" Display="Dynamic">
                    
                                          </asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please check your email address" ControlToValidate="emailid" ValidationExpression="\w+([._]\w+)*@\w+([-.]\w+)*\.\w+([.]\w+)"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="text-center">
            <asp:Button ID="submit" runat="server" Text="Submit" Class="btn btn-primary" OnClick="submit_Click" />
                      <asp:Button ID="button2" Text="show Detail" runat="server" class="btn bg-danger" OnClick="button2_Click" />
                </div>


        </div>
    </form>
</body>
</html>
