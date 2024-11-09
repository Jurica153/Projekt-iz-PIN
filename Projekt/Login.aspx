<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projekt.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style3">
                <img src="Slika%20Vsite/logoVsite.jpg" /></h2>
            <h2 class="auto-style3">Login</h2></div>
        <p class="auto-style3">
            Username:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style3">
            Password:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <div class="auto-style3">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Log in</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginConnectionString %>" DeleteCommand="DELETE FROM [LoginDB] WHERE [Username] = @Username" InsertCommand="INSERT INTO [LoginDB] ([Username], [Password]) VALUES (@Username, @Password)" SelectCommand="SELECT [Username], [Password] FROM [LoginDB]" UpdateCommand="UPDATE [LoginDB] SET [Password] = @Password WHERE [Username] = @Username">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
