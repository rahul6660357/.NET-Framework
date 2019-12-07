<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUploading.aspx.cs" Inherits="FileUploading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>File Uploading:-</h3>
            <asp:FileUpload ID="fileupload" runat="server" /><br />
            <asp:Button ID="btn" runat="server" Text="Upload" OnClick="btn_Click" /><br />
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </div>
       
    </form>
</body>
</html>
