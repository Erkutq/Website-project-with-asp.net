<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="İnternet_Programcılığı_Projesi.deneme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <!-- #include file="~/Sayfalar/Alısveris/html/UrunCard.html" -->





                <h1><%#Eval("UrunAciklamasi")%></h1>
            </ItemTemplate>
        </asp:DataList>
    </form>

<style>
        body{
            margin: 0px;
        }

        .container {
            width: 100%;
            display: flex;
            flex-direction: row;
            padding: 0;
            margin: 0;
            width: auto;
            background-color: gray;
        }

        .bg-container {
            /*            background-color: green;*/
            width: 80%;
            min-height: 100vh;
            float: right;
        }

        tr {
            float: left;
        }

        .heading {
            color: white;
            font-family: "Open Sans";
        }


        .description {
            color: white;
            font-family: "Open Sans";
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
        }

        .shopping-card {
            width: 275px;
            height: 370px;
            /*            background-color: grey;*/
            padding: 5px;
            margin: 0.9rem;
            border-radius: 16px;
            font-family: "Open Sans";
            font-size: 16px;
            float: left;
            border-style: solid;
            border-width: 0.1px;
        }




        .air-max-react-shoe-container {
            height: 200px;
            margin-bottom: 1rem;
            background-size: cover;
            border-radius: 16px;
            display: flex;
            justify-content: flex-end;
            align-items: flex-end;
        }

            .air-max-react-shoe-container img {
                border-radius: 10px;
            }

                .air-max-react-shoe-container img:hover {
                }


        .air-max-shoe-container {
            height: 200px;
            background-image: url('\Resimler\pexels-nic-wood-6432056.jpg');
            background-size: cover;
            border-radius: 16px;
            display: flex;
            justify-content: flex-end;
            align-items: flex-end;
        }

        .shoe-description: {
            font-size: 16px;
            color: #594d6d;
        }

        .trending-badge {
            background: #f7941d;
            color: white;
            padding: 4px 15px;
            font-size: 14px;
            border-radius: 16px;
        }

        .show-heading {
        }

        .bag-icon {
            background: #659ebc;
            width: 56px;
            height: 56px;
            border-radius: 100%;
        }

        .price {
            font-weight: 700;
        }

        .price-bag-container 
            display: flex;
            justify-content: space-between;
        }
</style>

</body>

</html>
