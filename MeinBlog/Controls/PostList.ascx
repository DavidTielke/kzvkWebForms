<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PostList.ascx.cs" Inherits="MeinBlog.Controls.PostList" %>

<asp:Repeater runat="server" SelectMethod="LoadPosts" ItemType="MeinBlog.Models.BlogPost">
    <HeaderTemplate>
        <table class="table table-condensed table-striped table-hover">
        <thead>
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        </thead>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td>
                <%#Item.Title%>
            </td>
            <td>
                <a href="~/default.aspx"><span class="fa fa-link"></span></a>
            </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>