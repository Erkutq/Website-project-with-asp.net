<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yönetim.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yönetim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <%--            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TitleKismi %>" SelectCommand="SELECT * FROM [CardTitle]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <br />
                    Title:
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    <br />
                    Descripton:
                    <asp:Label ID="DescriptonLabel" runat="server" Text='<%# Eval("Descripton") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <br />
                       <!-- #include file="/Sayfalar/YönetimSayfaları/YönetimKart.html" -->

        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
