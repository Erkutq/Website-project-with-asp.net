<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="UrunEkleme.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.UrunEkleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="test">


    <div class="auto-style3">
        <h3>Ürün Kodu Giriniz</h3>
        <asp:TextBox ID="UrunKodu" runat="server" CssClass=""></asp:TextBox>
        <h3>Ürününü adını giriniz</h3>
        <asp:TextBox ID="UrunAdı" runat="server"></asp:TextBox>
        <h3>Birim Fiyatını Girini</h3>
        <asp:TextBox ID="birimFiyati" runat="server"></asp:TextBox>
        <h3>Ürün kategorisini seçiniz</h3>
        <asp:DropDownList ID="Kategori" runat="server" DataSourceID="SqlDataSource1" DataTextField="Kategori" DataValueField="ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT * FROM [UrunlerKategori]"></asp:SqlDataSource>
        <h3>Ürün Stok numarasını giriniz</h3>
        <asp:TextBox ID="UrunStok" runat="server"></asp:TextBox>
        <h3>Ürün Açıklaması giriniz</h3>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button"/>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:FileUpload ID="FileUpload2" runat="server" />
    </div>
            </div>
    <style>

        .auto-style3 {
            width: 771px;
            margin-left: 108px;
/*            margin-top: -200px;
*/            margin-left:400px;
        }

        .test{
            margin-top:-350px;
        }

    </style>
</asp:Content>
