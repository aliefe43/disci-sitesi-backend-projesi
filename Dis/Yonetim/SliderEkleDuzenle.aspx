<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="SliderEkleDuzenle.aspx.cs" Inherits="Dis.Yonetim.SliderEkleDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Slider Ekle Düzenle</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="form-group">
                    <label>Resim1</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    <asp:Button ID="Button2" runat="server" Text="yükle" OnClick="Button2_Click1"/>
                    <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <label>Resim2</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control file-upload-info" />
                    <asp:Button ID="Button1" runat="server" Text="yükle" OnClick="Button1_Click"/>
                    <asp:Label ID="lblResim2" runat="server" Text=""></asp:Label>
                </div>

                <asp:Button ID="Button3" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button3_Click" />
                <br />
                <hr />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [Slider2] WHERE [id] = @id" InsertCommand="INSERT INTO [Slider2] ([Resim1], [Resim2]) VALUES (@Resim1, @Resim2)" SelectCommand="SELECT * FROM [Slider2]" UpdateCommand="UPDATE [Slider2] SET [Resim1] = @Resim1, [Resim2] = @Resim2 WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Resim1" Type="String" />
                    <asp:Parameter Name="Resim2" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Resim1" Type="String" />
                    <asp:Parameter Name="Resim2" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Resim1" HeaderText="Resim1" SortExpression="Resim1" />
                    <asp:BoundField DataField="Resim2" HeaderText="Resim2" SortExpression="Resim2" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </div>
</asp:Content>
