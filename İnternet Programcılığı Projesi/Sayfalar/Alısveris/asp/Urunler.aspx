<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.Alısveris.asp.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="select URUNLER.ID,URUNLER.ÜrünAdi,UrunlerKategori.Kategori,UrunResim.Resim1,UrunResim.Resim2,URUNLER.BirimFiyati,URUNLER.UrunAciklamasi,URUNLER.Tarih from URUNLER,UrunlerKategori,UrunResim where URUNLER.KategoriId=UrunlerKategori.ID and URUNLER.ID=UrunResim.ID"></asp:SqlDataSource>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <!-- #include file="~/Sayfalar/Alısveris/html/UrunCard.html" -->
                <style>
                    #ContentPlaceHolder1_DataList1 {
                        display: inline-block;
                    }
                </style>
            </ItemTemplate>

        </asp:DataList>
        <%-- <asp:DataList ID="DataList1" runat = "server" DataSourceID = "SqlDataSource2">
            <ItemTemplate>
            </ItemTemplate>
        </asp:DataList>--%>

        <style>
            #ContentPlaceHolder1_DataList1 {
                margin-left: 300px;
            }

            tr {
                display: inline-block;
            }
        </style>




        <style>
            .Containerd {
                background-color: red;
                width: 15rem;
            }

            #ContentPlaceHolder1_DataList2 {
                display: table-caption;
                margin-top: -1000px;
                background-color: gray;
                height: auto;
            }

                #ContentPlaceHolder1_DataList2 li {
                    margin-top: 500px;
                }

            #ContentPlaceHolder1_DataList2 {
                font-size: 1rem;
                color: black;
                color: black;
            }
        </style>

        <div class="Containerd">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT * FROM [UrunlerKategori]"></asp:SqlDataSource>
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="texts">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="texts" Style="text-decoration: none;" NavigateUrl='<%# Eval("ID", "~/Sayfalar/Alısveris/asp/kategoriSecimi.aspx?kategori={0}") %>'><h1 style="color:white;"><%# Eval("Kategori") %></h1></asp:HyperLink>

                    </div>
                    <style>
                        .texts {
                            width: 16rem;
                            background-color: #c05252;
                            font-size: 0.8rem;
                            padding: 0 10px;
                            margin-top: 0.2rem;
                        }

                           .texts:hover {
                            font-size: 1rem;
                            background-color: #666666;
                           transition: 0.8s;
                           color: yellow;
                        }

                        #HeaderTemplate {
                            width: 10rem;
                            
                            color: red;
                            font-size: 2rem;

                        }
                    </style>
                </ItemTemplate>



            </asp:DataList>
        </div>



        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </form>
</asp:Content>
