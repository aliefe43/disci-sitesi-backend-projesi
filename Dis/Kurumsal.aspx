<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="Dis.Kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- About Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row gx-5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" SelectCommand="SELECT * FROM [tblHakkimizda]"></asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="img/about.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="mb-4">
                                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Hakkımızda</h5>
                                <h1 class="display-4"><%#Eval("Baslik") %></h1>
                            </div>
                            <p>
                                <%#Eval("Aciklama") %>
                            </p>
                            <div class="row g-3 pt-3">
                                <div class="col-sm-3 col-6">
                                    <div class="bg-light text-center rounded-circle py-4">
                                        <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                                        <h6 class="mb-0">Nitelikli<small class="d-block text-primary">Doktorlar</small></h6>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-6">
                                    <div class="bg-light text-center rounded-circle py-4">
                                        <i class="fa fa-3x fa-procedures text-primary mb-3"></i>
                                        <h6 class="mb-0">Acil durum<small class="d-block text-primary">Servisi</small></h6>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-6">
                                    <div class="bg-light text-center rounded-circle py-4">
                                        <i class="fa fa-3x fa-microscope text-primary mb-3"></i>
                                        <h6 class="mb-0">Kesin<small class="d-block text-primary">Sonuç</small></h6>
                                    </div>
                                </div>
                                <div class="col-sm-3 col-6">
                                    <div class="bg-light text-center rounded-circle py-4">
                                        <i class="fa fa-3x fa-ambulance text-primary mb-3"></i>
                                        <h6 class="mb-0">Ücretsiz<small class="d-block text-primary">Ambulans</small></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
        </div>
    </div>
    <!-- About End -->

                        <!--misyon-vizyon-->

                        <div class="container-fluid py-5">
                            <div class="container">
                                <div class="row gx-5">
                                    <div class="col-lg-7">
                                        <div class="mb-4">
                                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Misyon ve Vizyon</h5>
                                        </div>
                                        <p>
                                            <%#Eval("Misyon")%>
                                            <br>
                                            <hr>
                                            <br>
                                            <%#Eval("Vizyon") %>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--misyon-vizyon-->
                    </ItemTemplate>
                </asp:Repeater>
</asp:Content>
