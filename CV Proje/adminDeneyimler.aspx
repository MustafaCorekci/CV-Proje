<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminDeneyimler.aspx.cs" Inherits="CV_Proje.adminDeneyimler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>BAŞLIK</th>
                    <th>ALT BAŞLIK</th>
                    <th>AÇIKLAMA</th>
                    <th>TARİH</th>
                    <th>İŞLEMLER</th>
                </tr>

                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("id") %></td>
                                <td><%# Eval("baslik") %></td>
                                <td><%# Eval("altBaslik") %></td>
                                <td><%# Eval("aciklama") %></td>
                                <td><%# Eval("tarih") %></td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "adminDeneyimSil.aspx?id=" + Eval("id") %>'>SİL</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "adminDeneyimGuncelle.aspx?id=" + Eval("id") %>'>GÜNCELLE</asp:HyperLink>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-info" NavigateUrl="adminDeneyimEkle.aspx">Deneyim Ekle</asp:HyperLink>
        </div>
    </form>
</asp:Content>
