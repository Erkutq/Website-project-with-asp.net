<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BlogSayfası.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.BlogSayfası" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="Containers">

            <div class="left">

                <asp:DataList ID="DataList2" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <!-- #include file = "~/Sayfalar/BlogSayfası/Kategoriler.html" -->

                        <%--  ID<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# Eval("ID", "~/ Sayfalar/WebForm1.aspx?kategori={0}") %>'><%# Eval("KategoriAdi") %></asp:HyperLink>
                :
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                KategoriAdi:
        <%--                <asp:Label ID="KategoriAdiLabel" runat = "server" Text = '<%# Eval("KategoriAdi") %>' /> --%>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kategori %>" SelectCommand="SELECT * FROM [BlogKategoriID]"></asp:SqlDataSource>

            </div>


            <div class="right">

                <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" FooterStyle-HorizontalAlign="Right">
                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />

                    <ItemTemplate>
                        <!-- #include file="~/Sayfalar/BlogSayfası/BlogDış.html" -->

                    </ItemTemplate>


                </asp:DataList>

            </div>

        </div>




        <style>

            .Containers{
                width: 100%;
            }

            .right{
                width: 100%;

            }

            .left{
                width: 20%;
                float: left;
        
                overflow: hidden;
            }
        </style>










        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString %>" SelectCommand="SELECT * FROM [BlogIcerik]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [BlogIcerik] WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))" InsertCommand="INSERT INTO [BlogIcerik] ([Baslik], [Icerik], [Data], [Resim], [Ozet], [KategoriID]) VALUES (@Baslik, @Icerik, @Data, @Resim, @Ozet, @KategoriID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [BlogIcerik] SET [Baslik] = @Baslik, [Icerik] = @Icerik, [Data] = @Data, [Resim] = @Resim, [Ozet] = @Ozet, [KategoriID] = @KategoriID WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Baslik" Type="String" />
                <asp:Parameter Name="original_Icerik" Type="String" />
                <asp:Parameter Name="original_Data" Type="DateTime" />
                <asp:Parameter Name="original_Resim" Type="String" />
                <asp:Parameter Name="original_Ozet" Type="String" />
                <asp:Parameter Name="original_KategoriID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Icerik" Type="String" />
                <asp:Parameter Name="Data" Type="DateTime" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="KategoriID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Icerik" Type="String" />
                <asp:Parameter Name="Data" Type="DateTime" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="KategoriID" Type="Int32" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Baslik" Type="String" />
                <asp:Parameter Name="original_Icerik" Type="String" />
                <asp:Parameter Name="original_Data" Type="DateTime" />
                <asp:Parameter Name="original_Resim" Type="String" />
                <asp:Parameter Name="original_Ozet" Type="String" />
                <asp:Parameter Name="original_KategoriID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <style>
            tr {
                float: left;
            }
        </style>

    </form>
</asp:Content>

