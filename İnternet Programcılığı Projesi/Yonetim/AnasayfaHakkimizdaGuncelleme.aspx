<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="AnasayfaHakkimizdaGuncelleme.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.AnasayfaHakkimizdaGuncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">

    <asp:Label ID="Label1" runat="server" Text="Başlık"></asp:Label>
    <asp:TextBox ID="baslik" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>



    <asp:FileUpload ID="FileUpload1" runat="server" />



    <asp:Button ID="Button1" runat="server" CssClass="auto-style1" Text="Button" OnClick="Button1_Click" />

    </div>

    <style>
        .test{
            width:100%;
            height:100%;
        }
        .auto-style2 {
            width: 87%;
            height: 349px;
            margin-left: 343px;
        }
    </style>
</asp:Content>
