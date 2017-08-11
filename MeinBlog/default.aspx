<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MeinBlog._default" %>

<!DOCTYPE html>
<html lang="de">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>David's Webseite</title>

    <!-- STYLES -->
    <link rel="stylesheet" href="./css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
    <link rel="stylesheet" href="./css/styles.css" />

    <!-- SCRIPTS -->
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <form id="form1" runat="server">
            <header class="jumbotron" id="header">
                <div>
                    <h2>// Training - Consulting - Projektarbeiten</h2>
                    <h1>
                        <span class="colorInactive">www.</span><span class="colorAcent">David</span><span class="colorInactive">-</span>
                        <span class="colorAcent">Tielke</span><span class="colorInactive">.de</span>
                    </h1>
                </div>
            </header>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                            aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">KZVK</a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="#">
                                    <span class="fa fa-home"></span>Home <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li><a href="#"><span class="fa fa-user"></span>Über Mich</a></li>
                            <li><a href="#"><span class="fa fa-rss-square"></span>Blog</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <main class="row">
                <!-- Inhaltsbereich -->
                <div id="content" class="col-md-8">
                    <!-- Filter -->
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><span class="fa fa-bar-chart"></span>Filter
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <asp:DropDownList runat="server" 
                                            ID="ddlAutor" 
                                            SelectMethod="LoadAutors" 
                                            class="form-control" 
                                            AutoPostBack="true" />
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:DropDownList runat="server" 
                                            ID="ddlMonth" 
                                            SelectMethod="LoadMonth" 
                                            DataTextField="Text" 
                                            DataValueField="Number" 
                                            class="form-control" AutoPostBack="True" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Artikel -->
                    <asp:Repeater runat="server" SelectMethod="LoadPosts" ItemType="MeinBlog.Models.BlogPost" EnableViewState="false">
                        <ItemTemplate>
                            <article class="panel panel-default">
                                <header class="panel-heading">
                                    <h1><%#Item.Title%></h1>
                                </header>
                                <main class="panel-body">
                                    <%#Item.Text %>
                                </main>
                                <footer class="panel-footer text-right">
                                    <span class="fa fa-user"></span>
                                    <autor><%#Item.Autor %></autor>
                                    - <span class="fa fa-calendar"></span>
                                    <date><%#Item.Date.ToString("dd.MM.yyy") %></date>
                                </footer>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="text-center">
                        <kzvk:DataPager TotalCount="10" PageSize="2" CurrentPage="1" runat="server" />
                    </div>
                </div>
                <!-- Sidebar -->
                <aside class="col-md-4">
                    <!-- Panel 1 -->
                    <div class="panel panel-default">
                        <div class="panel-heading"><span class="fa fa-user"></span>Über Mich</div>
                        <div class="panel-body text-center">
                            <img width="200" src="http://david-tielke.de/Content/images/david4.png">
                        </div>
                    </div>

                    <!-- Panel 2 -->
                    <div class="panel panel-default">
                        <div class="panel-heading"><span class="fa fa-rss-square"></span>Posts</div>
                        <div class="panel-body">
                            <kzvk:PostList runat="server" />
                        </div>
                    </div>
                </aside>
            </main>

            <footer class="well text-center">
                Copyright 2017 &copy; - David Tielke
            </footer>
        </form>
    </div>
</body>

</html>
