<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Hizmetler.aspx.cs" Inherits="Dis.Hizmetler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Services Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Servisler</h5>
                <h1 class="display-4">Mükemmel Sağlık Hizmetleri</h1>
            </div>
            <div class="row g-5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" SelectCommand="SELECT * FROM [tblHizmetler]"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="service-icon mb-4">
                                    <i class=<%#Eval("Icon") %>></i>
                                </div>
                                <h4 class="mb-3"><%#Eval("Baslik") %></h4>
                                <a class="btn btn-lg btn-primary rounded-pill" href="Randevu.aspx">
                                    <i class="bi bi-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!-- Services End -->
</asp:Content>
