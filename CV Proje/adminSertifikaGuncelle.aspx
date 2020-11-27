<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminSertifikaGuncelle.aspx.cs" Inherits="CV_Proje.adminSertifikaGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="ID" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtId" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Sertifika" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtSertifika" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-success" OnClick="btnGuncelle_Click"/>
        </div>
    </form>

</asp:Content>
