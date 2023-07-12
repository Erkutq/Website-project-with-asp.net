<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="KullaniciGiris.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.UyeKayit.KullaniciGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click1" Text="Button" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Sayfalar/UyeKayit/UyeKayit.aspx">ÜyeOL</asp:HyperLink>
    </form>
</asp:Content>
