<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="OncesiSonrasi.aspx.cs" Inherits="Dis.OncesiSonrasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Team Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">İşlemler</h5>
                <h1 class="display-4">Öncesi ve Sonrası</h1>
            </div>
            <div class="owl-carousel team-carousel position-relative">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" SelectCommand="SELECT * FROM [tblOncesi]"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="team-item">
                            <div class="row g-0 bg-light rounded overflow-hidden">
                                <div class="col-12 col-sm-5 h-100" style="margin-left: 0.5rem;">
                                    <img class="img-fluid h-100" src='img/<%#Eval("Resim1")%>' style="object-fit: cover;">
                                </div>
                                <div class="col-12 col-sm-5 h-100" style="margin-left: 6rem;">
                                    <img class="img-fluid h-100" src='img/<%#Eval("Resim2")%>' style="object-fit: cover;">
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
    <!-- Team End -->

</asp:Content>
