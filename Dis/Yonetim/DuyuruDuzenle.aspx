<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="DuyuruDuzenle.aspx.cs" Inherits="Dis.Yonetim.DuyuruDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 class="page-title">Duyuru düzene</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" class="form-control" runat="server" placeholder="başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Açıklama</label>
                        <asp:TextBox ID="txtAciklama" runat="server" class="form-control" placeholder="açıklama" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Resim</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                        <asp:Button ID="Button2" runat="server" Text="yükle" OnClick="Button2_Click" />
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click"/>
                    <br />
                    <br />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [tblDuyurular] WHERE [id] = @id" InsertCommand="INSERT INTO [tblDuyurular] ([Resim], [Baslik], [Aciklama]) VALUES (@Resim, @Baslik, @Aciklama)" SelectCommand="SELECT * FROM [tblDuyurular]" UpdateCommand="UPDATE [tblDuyurular] SET [Resim] = @Resim, [Baslik] = @Baslik, [Aciklama] = @Aciklama WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Resim" Type="String" />
                        <asp:Parameter Name="Baslik" Type="String" />
                        <asp:Parameter Name="Aciklama" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Resim" Type="String" />
                        <asp:Parameter Name="Baslik" Type="String" />
                        <asp:Parameter Name="Aciklama" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                        <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                        <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
