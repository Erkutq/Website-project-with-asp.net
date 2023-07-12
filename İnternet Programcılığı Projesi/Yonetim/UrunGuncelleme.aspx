<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/yonetim_sayfası.Master" AutoEventWireup="true" CodeBehind="UrunGuncelleme.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Yonetim.UrunGuncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        ID:
        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Baslik:
        <asp:TextBox ID="BaslikTextBox" runat="server" Text='<%# Bind("Baslik") %>' />
        <br />
        Icerik:
        <asp:TextBox ID="IcerikTextBox" runat="server" Text='<%# Bind("Icerik") %>' />
        <br />
        Data:
        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
        <br />
        Resim:
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        Ozet:
        <asp:TextBox ID="OzetTextBox" runat="server" Text='<%# Bind("Ozet") %>' />
        <br />
        KategoriID:
        <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Baslik:
        <asp:TextBox ID="BaslikTextBox" runat="server" Text='<%# Bind("Baslik") %>' />
        <br />
        Icerik:
        <asp:TextBox ID="IcerikTextBox" runat="server" Text='<%# Bind("Icerik") %>' />
        <br />
        Data:
        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
        <br />
        Resim:
        <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
        <br />
        Ozet:
        <asp:TextBox ID="OzetTextBox" runat="server" Text='<%# Bind("Ozet") %>' />
        <br />
        KategoriID:
        <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ID:
        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Baslik:
        <asp:Label ID="BaslikLabel" runat="server" Text='<%# Bind("Baslik") %>' />
        <br />
        Icerik:
        <asp:Label ID="IcerikLabel" runat="server" Text='<%# Bind("Icerik") %>' />
        <br />
        Data:
        <asp:Label ID="DataLabel" runat="server" Text='<%# Bind("Data") %>' />
        <br />
        Resim:
        <asp:Label ID="ResimLabel" runat="server" Text='<%# Bind("Resim") %>' />
        <br />
        Ozet:
        <asp:Label ID="OzetLabel" runat="server" Text='<%# Bind("Ozet") %>' />
        <br />
        KategoriID:
        <asp:Label ID="KategoriIDLabel" runat="server" Text='<%# Bind("KategoriID") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString11 %>" DeleteCommand="DELETE FROM [BlogIcerik] WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))" InsertCommand="INSERT INTO [BlogIcerik] ([Baslik], [Icerik], [Data], [Resim], [Ozet], [KategoriID]) VALUES (@Baslik, @Icerik, @Data, @Resim, @Ozet, @KategoriID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BlogIcerik] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [BlogIcerik] SET [Baslik] = @Baslik, [Icerik] = @Icerik, [Data] = @Data, [Resim] = @Resim, [Ozet] = @Ozet, [KategoriID] = @KategoriID WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))">
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
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="ID" QueryStringField="guncelle" Type="Int32" />
    </SelectParameters>
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
