<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Oncesi.aspx.cs" Inherits="Dis.Yonetim.Oncesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 class="page-title">Öncesi ve sonrası işlemleri</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="forms-sample">
                    
                    <div class="form-group">
                        <label>Öncesi Resim</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                        <asp:Button ID="Button2" runat="server" Text="yükle" OnClick="Button2_Click" />
                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label>Sonrası Resim</label>
                        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control file-upload-info"/>
                        <asp:Button ID="Button3" runat="server" Text="yükle" OnClick="Button3_Click" />
                        <asp:Label ID="lblResim2" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                    <br />
                    <br />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [tblOncesi] WHERE [id] = @id" InsertCommand="INSERT INTO [tblOncesi] ([Resim1], [Resim2]) VALUES (@Resim1, @Resim2)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblOncesi]" UpdateCommand="UPDATE [tblOncesi] SET [Resim1] = @Resim1, [Resim2] = @Resim2 WHERE [id] = @id">
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
                <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
