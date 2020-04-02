<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="height: 207px; width: 672px">
        <tr>
            <td>
                 <asp:Image ID="Image1" runat="server" Height="179px" ImageUrl="~/Images/changepwd.png" Width="178px" />
            </td>
            <td>
               <table style="height: 154px; width: 433px">
                   <tr>
                       <td class="auto-style1">
                           <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
                       &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtold" ErrorMessage="enter old pwd" ForeColor="Red" ValidationGroup="ware"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                     <tr>
                       <td>
                           <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
                       &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnew" ErrorMessage="enter new pwd" ForeColor="Red" ValidationGroup="ware"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                     <tr>
                       <td>
                           <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
                       &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtretype" ErrorMessage="enter retype pwd" ForeColor="Red" ValidationGroup="ware"></asp:RequiredFieldValidator>
                       &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew" ControlToValidate="txtretype" ErrorMessage="password mismatch" ForeColor="Red" ValidationGroup="ware"></asp:CompareValidator>
                       </td>
                   </tr>
                     <tr>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="ware" />
                       </td>
                       <td>
                           <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                       </td>
                   </tr>
               </table>
            </td>
        </tr>
    </table>
</asp:Content>

