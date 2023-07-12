<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="kategoriSecimi.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.Alısveris.asp.kategoriSecimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>

                                <!-- #include file="~/Sayfalar/Alısveris/html/UrunCard.html" -->

              
                <style>
                    tr{
                        display:inline-block;
                    }
                </style>
               
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT URUNLER.ID,URUNLER.ÜrünAdi,UrunlerKategori.Kategori,UrunResim.Resim1,UrunResim.Resim2,URUNLER.BirimFiyati,URUNLER.UrunAciklamasi FROM URUNLER,UrunlerKategori,UrunResim WHERE URUNLER.KategoriId=UrunlerKategori.ID AND URUNLER.ID=UrunResim.ID AND URUNLER.KategoriId=@ID">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="ID" QueryStringField="kategori" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
