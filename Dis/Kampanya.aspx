<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Kampanya.aspx.cs" Inherits="Dis.Kampanya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Pricing Plan Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">MEDİKAL PAKETLER</h5>
                <h1 class="display-4">Müthiş Diş Programları</h1>
            </div>
            <div class="owl-carousel price-carousel position-relative" style="padding: 0 45px 45px 45px;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" SelectCommand="SELECT * FROM [tblKampanya]"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="bg-light rounded text-center">
                            <div class="position-relative">
                                <img class="img-fluid rounded-top" src='img/<%#Eval("Resim")%>' alt="">
                                <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center" style="background: rgba(29, 42, 77, .8);">
                                    <h3 class="text-primary"><%#Eval("Isim")%></h3>
                                    >
                            <h1 class="display-4 text-white mb-0">
                                <small class="align-top fw-normal" style="font-size: 22px; line-height: 45px;">TL</small><%#Eval("Fiyat")%><small class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;"></small>
                            </h1>
                                </div>
                            </div>
                            <div class="text-center py-5">
                                <p>
                                    <%#Eval("Aciklama")%>
                                </p>
                                <a href="Iletisim.aspx" class="btn btn-primary rounded-pill py-3 px-5 my-2">Bize Ulaşın</a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <!-- Pricing Plan End -->

</asp:Content>
