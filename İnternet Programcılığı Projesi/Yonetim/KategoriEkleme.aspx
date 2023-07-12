<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="KategoriEkleme.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.KategoriEkleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
   
    <asp:TextBox ID="TextBox1" runat="server" Height="23px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
  
    <style>
        
        .auto-style1 {
            margin-top: -200px;
            width: 252px;
            margin-left:400px;
        }
    </style>
    </div>
</asp:Content>