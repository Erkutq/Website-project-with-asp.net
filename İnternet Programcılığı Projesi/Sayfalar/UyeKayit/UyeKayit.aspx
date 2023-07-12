<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UyeKayit.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.UyeKayit.UyeKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="Label">Adınızı giriniz</asp:Label>
        <asp:TextBox ID="Adi" runat="server"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="Label">Soyadınızı giriniz</asp:Label>

        <asp:TextBox ID="SoyAdi" runat="server"></asp:TextBox>
      <asp:Label ID="Label3" runat="server" Text="Label">Şifrenizi giriniz</asp:Label>

        <asp:TextBox ID="Sifre" runat="server" TextMode="Password"></asp:TextBox>
              <asp:Label ID="Label4" runat="server" Text="Label">Email Giriniz</asp:Label>

        <asp:TextBox ID="eposta" runat="server" TextMode="Email"></asp:TextBox>
              <asp:Label ID="Label5" runat="server" Text="Telefon"></asp:Label>

        <asp:TextBox ID="Telefon" runat="server" TextMode="Phone"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</asp:Content>
