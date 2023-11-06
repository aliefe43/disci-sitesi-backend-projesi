<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="KampanyaEkle.aspx.cs" Inherits="Dis.Yonetim.KampanyaEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kampanya ekle</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="forms-sample">
                        <div class="form-group">
                            <label for="exampleInputName1">İsim</label>
                            <asp:TextBox ID="txtIsim" runat="server" class="form-control" placeholder="isim"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputName1">Fiyat</label>
                            <asp:TextBox ID="txtFiyat" runat="server" class="form-control" placeholder="fiyat"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail3">Açıklama</label>
                            <asp:TextBox ID="txtAciklama" runat="server" class="form-control" placeholder="açıklama" TextMode="MultiLine" Height="100px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Resim</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                            <asp:Button ID="Button2" runat="server" Text="yükle" OnClick="Button2_Click" />
                            <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                        </div>
                        <asp:Button ID="Button3" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button3_Click" />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
