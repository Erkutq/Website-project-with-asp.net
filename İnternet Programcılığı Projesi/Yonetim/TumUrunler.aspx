<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="TumUrunler.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.TumUrunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Contain">

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" DeleteCommand="DELETE FROM [URUNLER] WHERE [ID] = @original_ID AND (([ÜrünKodu] = @original_ÜrünKodu) OR ([ÜrünKodu] IS NULL AND @original_ÜrünKodu IS NULL)) AND (([ÜrünAdi] = @original_ÜrünAdi) OR ([ÜrünAdi] IS NULL AND @original_ÜrünAdi IS NULL)) AND (([BirimFiyati] = @original_BirimFiyati) OR ([BirimFiyati] IS NULL AND @original_BirimFiyati IS NULL)) AND (([KategoriId] = @original_KategoriId) OR ([KategoriId] IS NULL AND @original_KategoriId IS NULL)) AND (([UrunStok] = @original_UrunStok) OR ([UrunStok] IS NULL AND @original_UrunStok IS NULL)) AND (([UrunAciklamasi] = @original_UrunAciklamasi) OR ([UrunAciklamasi] IS NULL AND @original_UrunAciklamasi IS NULL))" InsertCommand="INSERT INTO [URUNLER] ([ÜrünKodu], [ÜrünAdi], [BirimFiyati], [KategoriId], [UrunStok], [UrunAciklamasi]) VALUES (@ÜrünKodu, @ÜrünAdi, @BirimFiyati, @KategoriId, @UrunStok, @UrunAciklamasi)" OldValuesParameterFormatString="original_{0}" SelectCommand="select URUNLER.ÜrünAdi,UrunlerKategori.Kategori,UrunResim.Resim1,UrunResim.Resim2,URUNLER.BirimFiyati,URUNLER.UrunAciklamasi from URUNLER,UrunlerKategori,UrunResim where URUNLER.KategoriId=UrunlerKategori.ID and URUNLER.ID=UrunResim.ID" UpdateCommand="UPDATE [URUNLER] SET [ÜrünKodu] = @ÜrünKodu, [ÜrünAdi] = @ÜrünAdi, [BirimFiyati] = @BirimFiyati, [KategoriId] = @KategoriId, [UrunStok] = @UrunStok, [UrunAciklamasi] = @UrunAciklamasi WHERE [ID] = @original_ID AND (([ÜrünKodu] = @original_ÜrünKodu) OR ([ÜrünKodu] IS NULL AND @original_ÜrünKodu IS NULL)) AND (([ÜrünAdi] = @original_ÜrünAdi) OR ([ÜrünAdi] IS NULL AND @original_ÜrünAdi IS NULL)) AND (([BirimFiyati] = @original_BirimFiyati) OR ([BirimFiyati] IS NULL AND @original_BirimFiyati IS NULL)) AND (([KategoriId] = @original_KategoriId) OR ([KategoriId] IS NULL AND @original_KategoriId IS NULL)) AND (([UrunStok] = @original_UrunStok) OR ([UrunStok] IS NULL AND @original_UrunStok IS NULL)) AND (([UrunAciklamasi] = @original_UrunAciklamasi) OR ([UrunAciklamasi] IS NULL AND @original_UrunAciklamasi IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_ÜrünKodu" Type="String" />
            <asp:Parameter Name="original_ÜrünAdi" Type="String" />
            <asp:Parameter Name="original_BirimFiyati" Type="Double" />
            <asp:Parameter Name="original_KategoriId" Type="String" />
            <asp:Parameter Name="original_UrunStok" Type="Int32" />
            <asp:Parameter Name="original_UrunAciklamasi" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ÜrünKodu" Type="String" />
            <asp:Parameter Name="ÜrünAdi" Type="String" />
            <asp:Parameter Name="BirimFiyati" Type="Double" />
            <asp:Parameter Name="KategoriId" Type="String" />
            <asp:Parameter Name="UrunStok" Type="Int32" />
            <asp:Parameter Name="UrunAciklamasi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ÜrünKodu" Type="String" />
            <asp:Parameter Name="ÜrünAdi" Type="String" />
            <asp:Parameter Name="BirimFiyati" Type="Double" />
            <asp:Parameter Name="KategoriId" Type="String" />
            <asp:Parameter Name="UrunStok" Type="Int32" />
            <asp:Parameter Name="UrunAciklamasi" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_ÜrünKodu" Type="String" />
            <asp:Parameter Name="original_ÜrünAdi" Type="String" />
            <asp:Parameter Name="original_BirimFiyati" Type="Double" />
            <asp:Parameter Name="original_KategoriId" Type="String" />
            <asp:Parameter Name="original_UrunStok" Type="Int32" />
            <asp:Parameter Name="original_UrunAciklamasi" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
        </div>
    <style>
        .Contain{
            margin-top:-250px;
            display:flex;
            margin-left:20%;
        }
    </style>
</asp:Content>
