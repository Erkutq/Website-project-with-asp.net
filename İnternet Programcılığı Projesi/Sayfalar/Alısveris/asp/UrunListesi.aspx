<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UrunListesi.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.Alısveris.asp.UrunListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">



        <div class="contain">
            <div class="Container-category ">
                <div class="kategori nav">
                    <h2 class="category-title"></h2>
                    
                    <ul>
                        <li class="nav">
                            <a href="#home">-Arduino Proje Parcaları</a>
                            <ul>
                                <li>--Deneme</li>
                            </ul>
                        </li>
                        <li><a href="#news">-Bina Yangın Ve Guvenlik Sistemleri</a></li>
                        <li><a href="#contact">-Diafon Sistemleri</a></li>
                        <li><a href="#about">-Led Kontrol Cihazları</a></li>
                        <li class="nav">
                            <a href="#home">Encoder Cihazlar</a>
                            <ul>
                                <li>--djk</li>
                            </ul>
                        </li>
                        <li><a href="#news">Led Saf Malzemeler</a></li>
                        <li><a href="#contact">Otomosyon Cihazlar</a></li>
                        <li><a href="#about">Yeni Urunler</a></li>
                    </ul>

                </div>
            </div>



            <!--Ürün-Cardqq-->
            <asp:DataList ID="DataList1" runat="server">
            </asp:DataList>
        </div>

        <asp:SqlDataSource ID="Urunler" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" DeleteCommand="DELETE FROM [URUNLER] WHERE [ID] = @original_ID AND (([ÜrünKodu] = @original_ÜrünKodu) OR ([ÜrünKodu] IS NULL AND @original_ÜrünKodu IS NULL)) AND (([ÜrünAdi] = @original_ÜrünAdi) OR ([ÜrünAdi] IS NULL AND @original_ÜrünAdi IS NULL)) AND (([BirimFiyati] = @original_BirimFiyati) OR ([BirimFiyati] IS NULL AND @original_BirimFiyati IS NULL)) AND (([KategoriId] = @original_KategoriId) OR ([KategoriId] IS NULL AND @original_KategoriId IS NULL)) AND (([UrunStok] = @original_UrunStok) OR ([UrunStok] IS NULL AND @original_UrunStok IS NULL))" InsertCommand="INSERT INTO [URUNLER] ([ÜrünKodu], [ÜrünAdi], [BirimFiyati], [KategoriId], [UrunStok]) VALUES (@ÜrünKodu, @ÜrünAdi, @BirimFiyati, @KategoriId, @UrunStok)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [URUNLER]" UpdateCommand="UPDATE [URUNLER] SET [ÜrünKodu] = @ÜrünKodu, [ÜrünAdi] = @ÜrünAdi, [BirimFiyati] = @BirimFiyati, [KategoriId] = @KategoriId, [UrunStok] = @UrunStok WHERE [ID] = @original_ID AND (([ÜrünKodu] = @original_ÜrünKodu) OR ([ÜrünKodu] IS NULL AND @original_ÜrünKodu IS NULL)) AND (([ÜrünAdi] = @original_ÜrünAdi) OR ([ÜrünAdi] IS NULL AND @original_ÜrünAdi IS NULL)) AND (([BirimFiyati] = @original_BirimFiyati) OR ([BirimFiyati] IS NULL AND @original_BirimFiyati IS NULL)) AND (([KategoriId] = @original_KategoriId) OR ([KategoriId] IS NULL AND @original_KategoriId IS NULL)) AND (([UrunStok] = @original_UrunStok) OR ([UrunStok] IS NULL AND @original_UrunStok IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ÜrünKodu" Type="String" />
                <asp:Parameter Name="original_ÜrünAdi" Type="String" />
                <asp:Parameter Name="original_BirimFiyati" Type="Double" />
                <asp:Parameter Name="original_KategoriId" Type="String" />
                <asp:Parameter Name="original_UrunStok" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ÜrünKodu" Type="String" />
                <asp:Parameter Name="ÜrünAdi" Type="String" />
                <asp:Parameter Name="BirimFiyati" Type="Double" />
                <asp:Parameter Name="KategoriId" Type="String" />
                <asp:Parameter Name="UrunStok" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ÜrünKodu" Type="String" />
                <asp:Parameter Name="ÜrünAdi" Type="String" />
                <asp:Parameter Name="BirimFiyati" Type="Double" />
                <asp:Parameter Name="KategoriId" Type="String" />
                <asp:Parameter Name="UrunStok" Type="Int32" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ÜrünKodu" Type="String" />
                <asp:Parameter Name="original_ÜrünAdi" Type="String" />
                <asp:Parameter Name="original_BirimFiyati" Type="Double" />
                <asp:Parameter Name="original_KategoriId" Type="String" />
                <asp:Parameter Name="original_UrunStok" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

<style>
        .contain {
/*            background-color: red;
*/            width: 100%;
            height: 100%;
            display: flex;
            /*Bölüyor*/
        }

        .Container-category {
            width: 20%;
            height: auto;
            background-color: #f5f5f5;
            float: right;
            background-attachment: ;
        }

        .category-title {
            text-align: center;
            margin: 1rem 0;
        }

        .kategori {
        }

        li {
            border-style: solid;
            border-width: 0.1px;
            outline: none;
        }


        ul {
            list-style-type: none;
            line-height: 1.5rem;
            width: 100%;
            background-color: #f1f1f1;
        }

        li a {
            display: block;
            color: #000;
            font-size: 1rem;
            padding: 10px 16px;
            padding-left: 1rem;
            text-decoration: none;
        }

            /* Change the link color on hover */
            li a:hover {
                background-color: #555;
                color: white;
                transition: 0.7s;
            }

        .nav li ul {
            display: none;
            
        }

            .nav li ul li {
                padding: 10px 16px;
                padding-left: 2rem;
            }

        .nav li:hover ul {
            display: block;
            transition: 0.7s;
        }
    </style>


</asp:Content>
