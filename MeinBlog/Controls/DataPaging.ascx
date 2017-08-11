<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DataPaging.ascx.cs" Inherits="MeinBlog.Controls.DataPaging" %>

<nav aria-label="Page navigation">
    <ul class="pagination">
        <li>
            <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        
        <% for (int i = 0; i < Math.Ceiling(this.TotalCount / (double)PageSize); i++)
           {
               Response.Write("<li><a href='default.aspx?page="+(i+1)+"'>"+(i+1)+"</a></li>");
           } %>

        <li>
            <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>