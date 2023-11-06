<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="HizmetlerDuzenleSil.aspx.cs" Inherits="Dis.Yonetim.HizmetlerDuzenleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Hizmetler düzenle</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Başlık</label>
                        <asp:TextBox ID="txtBaslik" class="form-control" placeholder="başlık" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">İcon</label>
                        <asp:TextBox ID="txtIcon" class="form-control" placeholder="icon" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />
                    <br />
                    <br />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [tblHizmetler] WHERE [id] = @id" InsertCommand="INSERT INTO [tblHizmetler] ([Baslik], [Icon]) VALUES (@Baslik, @Icon)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblHizmetler]" UpdateCommand="UPDATE [tblHizmetler] SET [Baslik] = @Baslik, [Icon] = @Icon WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Baslik" Type="String" />
                        <asp:Parameter Name="Icon" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Baslik" Type="String" />
                        <asp:Parameter Name="Icon" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                        <asp:BoundField DataField="Icon" HeaderText="Icon" SortExpression="Icon" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
