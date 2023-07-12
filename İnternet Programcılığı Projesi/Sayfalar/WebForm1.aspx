<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ID" DataSourceID="Kategoriler" ForeColor="Black" GridLines="Horizontal">
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
                <br />
<br />
               
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="Kategoriler" runat="server" ConnectionString="<%$ ConnectionStrings:BlogBilgileri %>" SelectCommand="SELECT * FROM [BlogIcerik] WHERE ([KategoriID] = @KategoriID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="KategoriID" QueryStringField="kategori" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
