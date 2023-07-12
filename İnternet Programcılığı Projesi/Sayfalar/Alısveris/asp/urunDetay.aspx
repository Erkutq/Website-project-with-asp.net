<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="urunDetay.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.Alısveris.asp.urunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <!-- #include file="~/Sayfalar/Alısveris/html/UrunDetay.html" -->

               <%-- ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />

                <asp:Label ID="ÜrünAdiLabel" runat="server" Text='<%# Eval("ÜrünAdi") %>' />
                <br />
                BirimFiyati:
                <asp:Label ID="BirimFiyatiLabel" runat="server" Text='<%# Eval("BirimFiyati") %>' />
                <br />
                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Resim1") %>' />
                <br />
          
              <%--  <asp:Label ID="UrunStokLabel" runat="server" Text='<%# Eval("UrunStok") %>' />
                <br />
                   <asp:Label ID="BirimFiyatiLabel" runat="server" Text='<%# Eval("BirimFiyati") %>' />
                <br />
                UrunAciklamasi:
                <asp:Label ID="UrunAciklamasiLabel" runat="server" Text='<%# Eval("UrunAciklamasi") %>' />
                <br />
                UrunResimID:
                <asp:Label ID="UrunResimIDLabel" runat="server" Text='<%# Eval("UrunResimID") %>' />
                <br />--%>
                
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT URUNLER.ÜrünAdi,URUNLER.BirimFiyati,URUNLER.UrunAciklamasi,URUNLER.ID,UrunlerKategori.Kategori,UrunResim.Resim1,UrunResim.Resim2,URUNLER.BirimFiyati from URUNLER,UrunlerKategori,UrunResim WHERE URUNLER.ID=UrunResim.ID and URUNLER.KategoriId=UrunlerKategori.ID AND URUNLER.ID=@ID">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="ID" QueryStringField="urun" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            

    </form>
</asp:Content>





                   

