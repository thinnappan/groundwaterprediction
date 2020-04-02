<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="preprocessing.aspx.cs" Inherits="preprocessing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Click For Data Preprocessing" Font-Bold="True" Font-Names="Cambria" Height="42px" OnClick="Button1_Click" Width="270px" />
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="1155px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                        <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                        <asp:BoundField DataField="soiltype" HeaderText="soiltype" SortExpression="soiltype" />
                        <asp:BoundField DataField="agri" HeaderText="agri" SortExpression="agri" />
                        <asp:BoundField DataField="urban" HeaderText="urban" SortExpression="urban" />
                        <asp:BoundField DataField="industry" HeaderText="industry" SortExpression="industry" />
                        <asp:BoundField DataField="resi" HeaderText="resi" SortExpression="resi" />
                        <asp:BoundField DataField="avgrain_cm" HeaderText="avgrain_cm" SortExpression="avgrain_cm" />
                        <asp:BoundField DataField="humi_per" HeaderText="humi_per" SortExpression="humi_per" />
                        <asp:BoundField DataField="temp_c" HeaderText="temp_c" SortExpression="temp_c" />
                        <asp:BoundField DataField="windflow_kmph" HeaderText="windflow_kmph" SortExpression="windflow_kmph" />
                        <asp:BoundField DataField="bores" HeaderText="bores" SortExpression="bores" />
                        <asp:BoundField DataField="availfeet" HeaderText="availfeet" SortExpression="availfeet" />
                        <asp:BoundField DataField="avgtree" HeaderText="avgtree" SortExpression="avgtree" />
                        <asp:BoundField DataField="river" HeaderText="river" SortExpression="river" />
                        <asp:BoundField DataField="pond" HeaderText="pond" SortExpression="pond" />
                        <asp:BoundField DataField="lake" HeaderText="lake" SortExpression="lake" />
                        <asp:BoundField DataField="Approve" HeaderText="Approve" SortExpression="Approve" />
                        <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                        <asp:BoundField DataField="Survey_id" HeaderText="Survey_id" SortExpression="Survey_id" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [district], [area], [soiltype], [agri], [urban], [industry], [resi], [avgrain_cm], [humi_per], [temp_c], [windflow_kmph], [bores], [availfeet], [avgtree], [river], [pond], [lake], [Approve], [Month], [Survey_id] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

