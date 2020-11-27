<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminSertifikaEkle.aspx.cs" Inherits="CV_Proje.adminSertifikaEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Sertifika" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtSertifika" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnEkle" runat="server" Text="SERTİFİKA EKLE" CssClass="btn btn-primary" OnClick="btnEkle_Click"/>
        </div>
    </form>

</asp:Content>
