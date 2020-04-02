<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="soiltypes.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10
        {
            height: 17px;
            width: 637px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p class="auto-style10">
        <img alt="Image result for silty soil" src="https://thumbs.dreamstime.com/b/dry-cracks-sandy-silty-brown-soil-north-germany-dry-cracks-sandy-silty-brown-soil-north-germany-123891815.jpg" style="height: 120px; width: 287px" /><asp:Label ID="Label1" runat="server" Text="1. Silty Soil"></asp:Label>
        <img alt="Image result for clay  mixture soil" src="https://images.wisegeek.com/crusty-soil.jpg" style="height: 124px; width: 286px; margin-top: 30px" /><asp:Label ID="Label2" runat="server" Text="2. Clay Soil"></asp:Label>
        &nbsp;<img alt="Image result for loamy soil" src="https://www.worldatlas.com/r/w1200-h701-c1200x701/upload/33/45/4c/sandy-loam-soil.jpg" style="height: 125px; width: 285px; margin-top: 54px" />3. Loamy Soil</p>
</asp:Content>




