<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.Anasayfa" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server">
            <div class="resim">
<%--            <img src="resimler/pexels-jonas-svidras-785418.jpg"; height="500" width="1532" alt="Sample Photo"/>--%>
                <img src="../Resimler/pexels-rfstudio-3825581.jpg" alt="Logo" style="height:720px; width:100%;">



        </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT * FROM [BlogIcerik] ORDER BY [ID] DESC"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TitleKismi %>" SelectCommand="SELECT * FROM [CardTitle]"></asp:SqlDataSource>


<asp:Repeater ID="Repeater1" runat="server">
   <ItemTemplate>
       <div class="isim">


           <!-- #include file="/Sayfalar/SiteParcaları/Card.html" -->
       
       </div>


    </ItemTemplate>
</asp:Repeater>






<asp:repeater ID="Repeater2" runat="server">
    <ItemTemplate>
          <!-- #include file="~/Sayfalar/SiteParcaları/AnasayfaHakkimizda - Copy.html" -->

     
    </ItemTemplate>
</asp:Repeater>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebSitesiProjeConnectionString10 %>" SelectCommand="SELECT top 3 * FROM BlogIcerik,BlogKategoriID  WHERE BlogIcerik.KategoriID=BlogKategoriID.ID ORDER BY BlogIcerik.ID DESC"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                   
                    
                              <!-- #include file="~/Sayfalar/AnasayfaBlogIcerik.html" -->

                  
         
                </ItemTemplate>
            </asp:DataList>

            
                   
        </form> 


</asp:Content>


