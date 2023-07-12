<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Yonetim.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Sayfalar.Yonetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        
    <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                
                        
            </ItemTemplate>
   </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TitleKismi %>" SelectCommand="SELECT * FROM [CardTitle]"></asp:SqlDataSource>

        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server"/>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />

<style>
    .Title2{
        margin-left:65px;
    }

    .Title3{
        margin-left:65px;
    }

    .Title1{
        margin-left:125px;
    }
    
</style>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Height="228px" Width="1514px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:TemplateField HeaderText="Descripton" SortExpression="Descripton">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500"  Text='<%# Bind("Descripton") %>' ></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Descripton") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Top" />
                </asp:TemplateField>
        
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:blog %>" DeleteCommand="DELETE FROM [CardTitle] WHERE [ID] = @original_ID AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Descripton] = @original_Descripton) OR ([Descripton] IS NULL AND @original_Descripton IS NULL))" InsertCommand="INSERT INTO [CardTitle] ([Title], [Descripton]) VALUES (@Title, @Descripton)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CardTitle]" UpdateCommand="UPDATE [CardTitle] SET [Title] = @Title, [Descripton] = @Descripton WHERE [ID] = @original_ID AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Descripton] = @original_Descripton) OR ([Descripton] IS NULL AND @original_Descripton IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_Descripton" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Descripton" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Descripton" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_Descripton" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <h5 style="color:azure">Burası Blog sayfası</h5>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="BlogSayfası" Width="1518px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="5" CellSpacing="5" ForeColor="Black" GridLines="Horizontal" Height="407px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" SortExpression="KategoriID" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="BlogSayfası" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BlogBilgileri %>" DeleteCommand="DELETE FROM [BlogIcerik] WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))" InsertCommand="INSERT INTO [BlogIcerik] ([Baslik], [Icerik], [Data], [Resim], [Ozet], [KategoriID]) VALUES (@Baslik, @Icerik, @Data, @Resim, @Ozet, @KategoriID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BlogIcerik]" UpdateCommand="UPDATE [BlogIcerik] SET [Baslik] = @Baslik, [Icerik] = @Icerik, [Data] = @Data, [Resim] = @Resim, [Ozet] = @Ozet, [KategoriID] = @KategoriID WHERE [ID] = @original_ID AND (([Baslik] = @original_Baslik) OR ([Baslik] IS NULL AND @original_Baslik IS NULL)) AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([Data] = @original_Data) OR ([Data] IS NULL AND @original_Data IS NULL)) AND (([Resim] = @original_Resim) OR ([Resim] IS NULL AND @original_Resim IS NULL)) AND (([Ozet] = @original_Ozet) OR ([Ozet] IS NULL AND @original_Ozet IS NULL)) AND (([KategoriID] = @original_KategoriID) OR ([KategoriID] IS NULL AND @original_KategoriID IS NULL))">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="BlogSayfası" ForeColor="White">
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
                Resim:<asp:TextBox ID="ResimTextBox" runat="server" Text='<%# Bind("Resim") %>' />
                &nbsp;<br />Ozet:
                <asp:TextBox ID="OzetTextBox" runat="server" Text='<%# Bind("Ozet") %>' />
                <br />
                KategoriID:
                <asp:TextBox ID="KategoriIDTextBox" runat="server" Text='<%# Bind("KategoriID") %>' />
                <br />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:TextBox ID="BaslikID" runat="server">baslik</asp:TextBox>
        <asp:TextBox ID="IcerikID" runat="server">içerik</asp:TextBox>
        <asp:TextBox ID="TarihID" runat="server">TarihID</asp:TextBox>
        <asp:FileUpload ID="Resim" runat="server" />
        <asp:TextBox ID="Ozet" runat="server">Ozet</asp:TextBox>
        <asp:TextBox ID="KategoriID" runat="server">KategoriId</asp:TextBox>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
        <br />
    </form>

</asp:Content>
