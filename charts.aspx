<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="charts.aspx.cs" Inherits="charts" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
         //document.onreadystatechange = function () {
         //    var state = document.readyState
         //    if (state == 'interactive') {
         //        document.getElementById('contents').style.visibility = "hidden";
         //    }
         //    else if (state == 'complete') {
         //        setTimeout(function () {
         //            document.getElementById('interactive');
         //            document.getElementById('load').style.visibility = "hidden";
         //            document.getElementById('contents').style.visibility = "visible";
         //        }, 1000);
         //    }
         //}
         document.onreadystatechange = function () {
             var state = document.readyState
             if (state == 'complete') {
                 document.getElementById('interactive');
                 document.getElementById('load').style.visibility = "hidden";
             }
         }
    </script>
    <style>
        #load{
    width:100%;
    height:100%;
    position:fixed;
    /*z-index:1111;*/
    /*background:url("https://www.creditmutuel.fr/cmne/fr/banques/webservices/nswr/images/loading.gif") no-repeat center center rgba(0,0,0,0.25)*/
     background:url("Images/giphy.gif") no-repeat center center rgb(255, 255, 255)
}
        .auto-style1
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="load"></div>
    <div id="contents">

    <table>
        <tr>
            <td>
                Soil Type&nbsp;
            </td>
            <td>
                Agri - Available Feet Ground water</td>
            <td>
                Urban - Available Feet Ground Water</td>
             <td>
                Industry - Available Feet Ground Water</td>
            
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="soiltype" YValueMembers="nodata"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [soiltype], [nodata] FROM [soilchart]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Palette="EarthTones">
                    <Series>
                        <asp:Series Name="Series1" ChartType="FastPoint" YValueMembers="availfeet" YValuesPerPoint="2"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [availfeet] FROM [datasetdet] WHERE ([agri] = @agri) ORDER BY [availfeet]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="yes" Name="agri" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Palette="SeaGreen">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Point" YValueMembers="availfeet" YValuesPerPoint="2"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [availfeet] FROM [datasetdet] WHERE ([urban] = @urban) ORDER BY [availfeet]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="yes" Name="urban" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" Palette="Berry">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Point" YValueMembers="availfeet"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [availfeet] FROM [datasetdet] WHERE ([industry] = @industry) ORDER BY [availfeet]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="yes" Name="industry" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
         
        </tr>
        </table>
    <table>
        <tr>
             <td class="auto-style1">
                Residential - Available Feet Ground Water

             </td>
            <td class="auto-style1">
                 Place&nbsp; Wise Available Bore - 
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="Red" Font-Bold="True" Font-Names="Cambria" ForeColor="White" Height="37px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="118px">
                    <asp:ListItem>Agri</asp:ListItem>
                    <asp:ListItem>Urban</asp:ListItem>
                    <asp:ListItem>Industry</asp:ListItem>
                    <asp:ListItem>Residential</asp:ListItem>
                </asp:DropDownList>
               
                </td>
        </tr>
        <tr>
               <td>
                <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5" Palette="Chocolate">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Point" YValueMembers="availfeet"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [availfeet] FROM [datasetdet] WHERE ([resi] = @resi) ORDER BY [availfeet]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="yes" Name="resi" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource6" Width="1140px">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Line" XValueMember="district" YValueMembers="nobores"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [district], [nobores] FROM [disborechart] ORDER BY [district]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

        </div>
    
</asp:Content>

