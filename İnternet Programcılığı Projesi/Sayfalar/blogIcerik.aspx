<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="blogIcerik.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.BlogSayfası.blogIcerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                                   <!-- #include file="~/Sayfalar/BlogSayfası/BlogIcerik.html" -->

                <%--ID:
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
<br />--%>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:blogic %>" SelectCommand="SELECT * FROM [BlogIcerik] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="ID" QueryStringField="urunno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
