<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.Alısveris.asp.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID">
            <HeaderTemplate>
                <div class="basket-labels">
                    <ul>
                        <li class="item item-heading">Ürün</li>
                        <li class="price">Fiyat</li>

                        <%--<li class="subtotal">Toplam TUtar</li>--%>
                    </ul>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <!-- #include file="~/Sayfalar/Alısveris/html/SepetEklenen.html" -->
                <%--<a href=" <%# Eval("ID", "sepetSil.aspx?urun={0}") %>" style="margin-left: 1000px; margin-top:500px; display:inline-block;">Sil</a>--%>
            </ItemTemplate>
        </asp:DataList>
       
        <%--        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT * FROM [Sepet]"></asp:SqlDataSource>--%>
        <%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString11 %>" SelectCommand="SELECT * FROM URUNLER,Sepet,Kullanici,UrunlerKategori WHERE URUNLER.ID=Sepet.UrunID AND Kullanici.ID=Sepet.KullaniciID and UrunlerKategori.ID=URUNLER.KategoriId and Kullanici.ID=1"></asp:SqlDataSource>--%>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red" CssClass="test">
        </asp:Label>
        <h1 style="font-size:50px; display:inline-block; margin-left:55%;">Ödenicek Tutar</h1>
        <style>
            .test{
                margin-left:80%;
                font-size:50px;
                display:inline-block;
        
            }
            h1{
                display:inline-block;
                margin-top:-45px;
               
            }
        </style>
    </form>

</asp:Content>
