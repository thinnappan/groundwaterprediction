<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="uploaddataset.aspx.cs" Inherits="uploaddataset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9
    {
        font-size: x-large;
        margin-bottom: 12px;
    }
    .auto-style10
    {
        width: 504px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="height: 217px; width: 664px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Upload Dataset" CssClass="auto-style9"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="True" Font-Names="Cambria" CssClass="auto-style9" />
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload file" ForeColor="Red" ValidationGroup="ware" CssClass="auto-style9"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" Font-Bold="True" Font-Names="Cambria" ValidationGroup="ware" CssClass="auto-style9" Height="38px" />
            </td>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" CssClass="auto-style9" />
            &nbsp;<asp:Label ID="lblack" runat="server" ForeColor="#CC0000" Text="Dataset Uploaded Successfully !!" Visible="False" CssClass="auto-style9"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

