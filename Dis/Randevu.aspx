<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Randevu.aspx.cs" Inherits="Dis.Randevu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- randevu Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                ...
            </div>
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 m-5 mb-0">
                        <form runat="server">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Size Ulaşabilmemiz İçin Bilgileri Doldurunuz</h5>
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-light border-0" placeholder="Ad Soyad"></asp:TextBox>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-light border-0" placeholder="E-mail"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-light border-0" placeholder="Telefon"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:TextBox ID="TextBox4" class="form-control bg-light border-0" rows="5" placeholder="Kısa Mesaj" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button1" class="btn btn-primary w-100 py-3" runat="server" Text="İlet" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- randevu End -->
</asp:Content>
