<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="Dis.Duyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Blog Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Duyurular</h5>
                <h1 class="display-4">Güncel Yazılarımız</h1>
            </div>
            <div class="row g-5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" SelectCommand="SELECT * FROM [tblDuyurular]"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-xl-4 col-lg-6">
                            <div class="bg-light rounded overflow-hidden">
                                <img class="img-fluid w-100" src='img/<%#Eval("Resim") %>' alt="">
                                <div class="p-4">
                                    <a class="h3 d-block mb-3" href=""><%#Eval("Baslik") %></a>
                                    <p class="m-0"><%#Eval("Aciklama") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!-- Blog End -->
</asp:Content>
