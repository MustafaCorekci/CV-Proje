<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminDeneyimEkle.aspx.cs" Inherits="CV_Proje.adminDeneyimEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Başlık" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Alt Başlık" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtAltBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Açıklama" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtAciklama" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Tarih" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtTarih" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnKaydet" runat="server" Text="KAYDET" CssClass="btn btn-primary" OnClick="btnKaydet_Click" />
        </div>
    </form>

</asp:Content>
