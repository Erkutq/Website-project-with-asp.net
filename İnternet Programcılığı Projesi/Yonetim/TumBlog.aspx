<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="TumBlog.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.TumBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyField="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="461px">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Baslik:
            <asp:Label ID="BaslikLabel" runat="server" Text='<%# Eval("Baslik") %>' />
            <br />
            Icerik:
            <asp:Label ID="IcerikLabel" runat="server" Text='<%# Eval("Icerik") %>' />
            <br />
            Data:
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
            <br />
            Resim:
            <asp:Label ID="ResimLabel" runat="server" Text='<%# Eval("Resim") %>' />
            <br />
            Ozet:
            <asp:Label ID="OzetLabel" runat="server" Text='<%# Eval("Ozet") %>' />
            <br />
            KategoriID:
            <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Eval("KategoriID") %>' />
      
<%--             NavigateUrl='<%# Eval("ID", "~/Sayfalar/Alısveris/asp/urunDetay.aspx?urun={0}") %>'>--%>

            <asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("ID", "~/Yonetim/UrunGuncelleme.aspx?guncelle={0}") %>' />
<%--            NavigateUrl='<%# Eval("ID", "~/Yonetim/UrunGuncelleme.aspx?guncelle={0}") %>'--%>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" DeleteCommand="DELETE FROM [BlogIcerik] WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))" InsertCommand="INSERT INTO [BlogIcerik] ([Baslik], [Icerik], [Data], [Resim], [Ozet], [KategoriID]) VALUES (@Baslik, @Icerik, @Data, @Resim, @Ozet, @KategoriID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BlogIcerik]" UpdateCommand="UPDATE [BlogIcerik] SET [Baslik] = @Baslik, [Icerik] = @Icerik, [Data] = @Data, [Resim] = @Resim, [Ozet] = @Ozet, [KategoriID] = @KategoriID WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))">
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
</asp:Content>
