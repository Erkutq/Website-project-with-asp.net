<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="BlogEkle.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.BlogEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formTest">

    <asp:TextBox runat="server" ID="Icerik" TextMode="MultiLine" Width="268px" Height="64px">Icerik</asp:TextBox>

    <asp:TextBox runat="server" ID="Baslik" Width="266px" Height="58px">Başlık</asp:TextBox>
    <asp:TextBox runat="server" ID="tarih" Width="264px" Height="38px" TextMode="DateTime">Tarih</asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="KategoriAdi" DataValueField="ID" Width="273px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT * FROM [BlogKategoriID]"></asp:SqlDataSource>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:TextBox ID="TextBox1" runat="server" Width="267px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </div>
    <style>
        .formTest{
            width:25%;
            margin-left:20%;
            margin-top:-200px;
        }

    </style>
</asp:Content>
