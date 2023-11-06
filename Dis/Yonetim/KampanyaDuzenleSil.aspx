<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="KampanyaDuzenleSil.aspx.cs" Inherits="Dis.Yonetim.KampanyaDuzenleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3 class="page-title">Kampanya düzenleme ve silme</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AresDisConnectionString %>" DeleteCommand="DELETE FROM [tblKampanya] WHERE [id] = @id" InsertCommand="INSERT INTO [tblKampanya] ([Isim], [Resim], [Fiyat], [Aciklama]) VALUES (@Isim, @Resim, @Fiyat, @Aciklama)" SelectCommand="SELECT * FROM [tblKampanya]" UpdateCommand="UPDATE [tblKampanya] SET [Isim] = @Isim, [Resim] = @Resim, [Fiyat] = @Fiyat, [Aciklama] = @Aciklama WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Isim" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Fiyat" Type="Int32" />
            <asp:Parameter Name="Aciklama" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Isim" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Fiyat" Type="Int32" />
            <asp:Parameter Name="Aciklama" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" class="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Isim" HeaderText="Isim" SortExpression="Isim" />
            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
            <asp:BoundField DataField="Aciklama" HeaderText="Aciklama" SortExpression="Aciklama" />
        </Columns>
    </asp:GridView>
</asp:Content>
