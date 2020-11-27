<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminEgitimler.aspx.cs" Inherits="CV_Proje.adminEğitimler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <table class="table table-bordered">
                <tr>
                    <th class="auto-style1">ID</th>
                    <th class="auto-style1">BAŞLIK</th>
                    <th class="auto-style1">ALT BAŞLIK</th>
                    <th class="auto-style1">AÇIKLAMA</th>
                    <th class="auto-style1">TARİH</th>
                    <th class="auto-style1">GENEL NOT</th>
                    <th class="auto-style1">İŞLEMLER</th>
                </tr>

                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("id") %></td>
                                <td><%# Eval("baslik") %></td>
                                <td><%# Eval("altBaslik") %></td>
                                <td><%# Eval("aciklama") %></td>
                                <td><%# Eval("notOrtalama") %></td>
                                <td><%# Eval("tarih") %></td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "adminEgitimSil.aspx?id=" + Eval("id") %>'>SİL</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "adminEgitimGuncelle.aspx?id=" + Eval("id") %>'>GÜNCELLE</asp:HyperLink>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-info" NavigateUrl="adminEgitimEkle.aspx">Eğitim Ekle</asp:HyperLink>
        </div>
    </form>

</asp:Content>
