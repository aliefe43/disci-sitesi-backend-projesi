<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Dis.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- Contact Start -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" SelectCommand="SELECT * FROM [tblIletisim]"></asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
             <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Sorusu Olan?</h5>
                <h1 class="display-4">Bizimle iletişime geçmekten kaçınmayın</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-location-arrow text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><%#Eval("Adres") %></h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-phone text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><%#Eval("Tel") %></h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-envelope-open text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><%#Eval("Mail") %></h6>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12" style="height: 500px;">
                    <div class="position-relative h-100">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d98635.43927878609!2d29.904640079498815!3d39.41604013442448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14c9499f22a7880f%3A0x83a08c91e02503ff!2sK%C3%BCtahya%20Belediyesi%20Yeni%20Hizmet%20Binas%C4%B1!5e0!3m2!1str!2str!4v1699179520340!5m2!1str!2str" width="1300" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 m-5 mb-0">
                        <form runat="server">
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-light border-0" placeholder="Ad Soyad"></asp:TextBox>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0" placeholder="E-mail"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-light border-0" placeholder="Konu"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:TextBox ID="TextBox4" class="form-control bg-light border-0" textmode="MultiLine" rows="5" runat="server" placeholder="Mesaj"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button1" class="btn btn-primary w-100 py-3" runat="server" Text="Mesaj Gönder" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
        </ItemTemplate>
    </asp:Repeater>
   
</asp:Content>
