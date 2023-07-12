<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yazi.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.yazi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
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
                <asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
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

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogBilgileri %>" SelectCommand="SELECT * FROM [BlogIcerik] WHERE ([KategoriID] = @KategoriID)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="KategoriID" QueryStringField="kat" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
