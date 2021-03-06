﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminYetenekler.aspx.cs" Inherits="CV_Proje.adminYetenekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>YETENEK</th>
                    <th>İŞLEMLER</th>
                </tr>

                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("id") %></td>
                                <td><%# Eval("yetenek") %></td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "adminYetenekSil.aspx?id=" + Eval("id") %>'>SİL</asp:HyperLink>
                                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "adminYetenekGuncelle.aspx?id=" + Eval("id") %>'>GÜNCELLE</asp:HyperLink>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-info" NavigateUrl="adminYetenekEkle.aspx">Yetenek Ekle</asp:HyperLink>
        </div>
    </form>

</asp:Content>
