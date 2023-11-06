<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="KurumsalDuzenleSil.aspx.cs" Inherits="Dis.Yonetim.KurumsalDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kurumsal Düzenle</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" class="form-control" placeholder="başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Hakkımızda</label>
                        <asp:TextBox ID="txtHakkimizda" runat="server" class="form-control" placeholder="hakkımızda" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Misyon</label>
                        <asp:TextBox ID="txtMisyon" runat="server" class="form-control" placeholder="misyon" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Vizyon</label>
                        <asp:TextBox ID="txtVizyon" runat="server" class="form-control" placeholder="vizyon" TextMode="MultiLine" Height="100px"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />
                    <br />
                    <hr />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [tblHakkimizda] WHERE [id] = @id" InsertCommand="INSERT INTO [tblHakkimizda] ([Baslik], [Aciklama], [Misyon], [Vizyon]) VALUES (@Baslik, @Aciklama, @Misyon, @Vizyon)" SelectCommand="SELECT * FROM [tblHakkimizda]" UpdateCommand="UPDATE [tblHakkimizda] SET [Baslik] = @Baslik, [Aciklama] = @Aciklama, [Misyon] = @Misyon, [Vizyon] = @Vizyon WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Baslik" Type="String" />
                        <asp:Parameter Name="Aciklama" Type="String" />
                        <asp:Parameter Name="Misyon" Type="String" />
                        <asp:Parameter Name="Vizyon" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Baslik" Type="String" />
                        <asp:Parameter Name="Aciklama" Type="String" />
                        <asp:Parameter Name="Misyon" Type="String" />
                        <asp:Parameter Name="Vizyon" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                        <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
                        <asp:BoundField DataField="Misyon" HeaderText="Misyon" SortExpression="Misyon" />
                        <asp:BoundField DataField="Vizyon" HeaderText="Vizyon" SortExpression="Vizyon" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
