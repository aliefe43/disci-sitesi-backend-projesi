<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="IletisimBilgi.aspx.cs" Inherits="Dis.Yonetim.IletisimBilgi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">İletişim bilgileri düzenle</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Adres</label>
                        <asp:TextBox ID="txtAdres" class="form-control" placeholder="adres" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Tel</label>
                        <asp:TextBox ID="txtTel" class="form-control" placeholder="tel" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">E-Posta</label>
                        <asp:TextBox ID="txtPosta" class="form-control" placeholder="E-Posta" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />
                    <br />
                    <br />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [tblIletisim] WHERE [id] = @id" InsertCommand="INSERT INTO [tblIletisim] ([Adres], [Tel], [Mail]) VALUES (@Adres, @Tel, @Mail)" SelectCommand="SELECT * FROM [tblIletisim]" UpdateCommand="UPDATE [tblIletisim] SET [Adres] = @Adres, [Tel] = @Tel, [Mail] = @Mail WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="Tel" Type="String" />
                        <asp:Parameter Name="Mail" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="Tel" Type="String" />
                        <asp:Parameter Name="Mail" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                        <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
                        <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
