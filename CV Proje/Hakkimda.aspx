<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="CV_Proje.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Adınız" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Soyadınız" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Adres" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Mail" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Telefon" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Text="Not" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtNot" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label7" runat="server" Text="Fotoğraf" CssClass="form-group"></asp:Label>
                <asp:TextBox ID="txtFotograf" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
        </div>
    </form>

</asp:Content>
