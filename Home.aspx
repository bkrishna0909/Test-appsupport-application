﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .centerd{
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100vh;
            text-align:center;
            font-size: 48px;
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="centerd">
            Welcome
        </div>
<div class="centerd">
            Our deployment is successfull with latest changes
        </div>
<img src="~/logo" class="rounded-circle" height="40" width="40" asp-append-version="true" />
    </form>
</body>
</html>
