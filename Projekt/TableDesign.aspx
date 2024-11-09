<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableDesign.aspx.cs" Inherits="Projekt.TableDesign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-right: 4px;
            margin-top: 4px;
        }
        .auto-style4 {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <div class="auto-style4">
            <img src="Slika%20Vsite/logoVsite.jpg" /><br />
            <br />
            </div>
            <h2 class="auto-style4">List of TableDesign about <b>"PhoneBook"</b></h2>
            <div class="auto-style4">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Logout</asp:LinkButton>
            &nbsp;
            <br />
            </b><br />
            </div>
        </div>
        <div class="auto-style4">
        <asp:GridView ID="gvPhoneBook" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="PhoneBookID"
            ShowHeaderWhenEmpty="true"

            OnRowCommand="gvPhoneBook_RowCommand" 
            OnRowEditing="gvPhoneBook_RowEditing" 
            OnRowCancelingEdit="gvPhoneBook_RowCancelingEdit"
            OnRowUpdating="gvPhoneBook_RowUpdating"
            OnRowDeleting="gvPhoneBook_RowDeleting"

            CellPadding="4" ForeColor="#333333" GridLines="None" Width="780px"  CssClass="auto-style2">
            <AlternatingRowStyle BackColor="White" />
            <%-- Theme Properties --%>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />

            <Columns>
                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFirstName" Text='<%# Eval("FirstName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("LastName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtLastName" Text='<%# Eval("LastName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtLastNameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Contact") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtContact" Text='<%# Eval("Contact") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtContactFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmailFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/edit-icon.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/Images/Delete-icon.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/Save-icon.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                        <asp:ImageButton ImageUrl="~/Images/Cancel-icon.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ImageUrl="~/Images/add-new -icon.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
        <br />
        <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
        <br />
        <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
    </form>
</body>
</html>
