<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="groundwaterpredic.aspx.cs" Inherits="groundwaterpredic" %>
<%@ Register Assembly="ASP.Web.UI.PopupControl" Namespace="ASP.Web.UI.PopupControl"
    TagPrefix="ASPP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style3 {
            width: 300px;
            height: 87px;
        }
        .auto-style4 {
            width: 545px;
        }
        .auto-style6
        {
            width: 221px;
        }
        .auto-style7
        {
            width: 167px;
        }
        .auto-style8
        {
            width: 335px;
        }
        .auto-style9
        {
            width: 564px;
            height: 87px;
        }
        .auto-style10
        {
            height: 54px;
        }
        .auto-style11
        {
            width: 335px;
            height: 54px;
        }
        .auto-style12
        {
            height: 39px;
        }
        .auto-style13
        {
            width: 335px;
            height: 39px;
        }
        .auto-style14
        {
        width: 151px;
        height: 39px;
    }
        .auto-style15
        {
            height: 42px;
        }
        .auto-style16
        {
            width: 335px;
            height: 42px;
        }
        .auto-style17
        {
            width: 151px;
            height: 42px;
        }
        .auto-style18
        {
            height: 43px;
        }
        .auto-style19
        {
            width: 335px;
            height: 43px;
        }
        .auto-style20
        {
            width: 151px;
            height: 43px;
        }
        .auto-style21
        {
            height: 36px;
        }
        .auto-style22
        {
            width: 335px;
            height: 36px;
        }
        .auto-style23
        {
            width: 151px;
            height: 36px;
        }
        .auto-style24
        {
            height: 40px;
        }
        .auto-style25
        {
            width: 335px;
            height: 40px;
        }
        .auto-style26
        {
            width: 151px;
            height: 40px;
        }
        .auto-style27
        {
            height: 35px;
        }
        .auto-style28
        {
            width: 335px;
            height: 35px;
        }
        .auto-style29
        {
            height: 49px;
        }
        .auto-style30
        {
            width: 335px;
            height: 49px;
        }
    .auto-style31
    {
        font-size: large;
    }
    </style>
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <table style="width: 852px; height: 538px;">
        <tr>
            <td class="auto-style9">

            
    <table style="height: 423px; width: 515px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Soil Type" CssClass="auto-style31"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="dropsand" runat="server" Font-Bold="True" Font-Names="Cambria" DataSourceID="SqlDataSource1" DataTextField="soiltype" DataValueField="soiltype" CssClass="auto-style31">
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>Red Sandy</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="dropsand" ErrorMessage="Select Soil Type" CssClass="auto-style31"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT DISTINCT [soiltype] FROM [datasetdet]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Text="Select Type" CssClass="auto-style31"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:DropDownList ID="droptype" runat="server" Font-Bold="True" Font-Names="Cambria" Width="103px" CssClass="auto-style31">
                    <asp:ListItem>Agri</asp:ListItem>
                    <asp:ListItem>Urban</asp:ListItem>
                    <asp:ListItem>Industry</asp:ListItem>
                    <asp:ListItem>Residential</asp:ListItem>
                </asp:DropDownList>
                <span class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="droptype" ErrorMessage="Select the Land Type" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label3" runat="server" Text="Average Rainfall"></asp:Label>
                </span>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtrainfallfrom" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">cm<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrainfallfrom" ErrorMessage="Enter the avg rainfall" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </span>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtrainfallto" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">cm<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtrainfallto" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" Text="Average Tree"></asp:Label>
                </span>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtreefrom" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">no
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtreefrom" ErrorMessage="Enter the average trees" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </span>
             </td>
            <td class="auto-style17">
                <asp:TextBox ID="txttreeto" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">no<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txttreeto" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label5" runat="server" Text="No of Bore"></asp:Label>
                </span>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="txtborefrom" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtborefrom" ErrorMessage="Enter the no of bore" ForeColor="#FF5050" CssClass="auto-style31"></asp:RequiredFieldValidator>
            </td>
             <td class="auto-style20">
                <asp:TextBox ID="txtboreto" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                 <span class="auto-style31">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtboreto" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%-- <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="No of Wells"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtwellfrom" runat="server" Width="50px"></asp:TextBox>
            </td>
              <td>
                <asp:TextBox ID="txtwellto" runat="server" Width="50px"></asp:TextBox>
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label7" runat="server" Text="Humidity"></asp:Label>
                </span>
            </td>
           <td class="auto-style13">
                <asp:TextBox ID="txthumidfrom" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                %<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txthumidfrom" ErrorMessage="Enter the humidty" ForeColor="#FF5050" CssClass="auto-style31"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txthumidto" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                %<span class="auto-style31"><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txthumidto" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style21">
                <asp:Label ID="Label8" runat="server" Text="Temperature"></asp:Label>
                </span>
            </td>
           <td class="auto-style22">
                <asp:TextBox ID="txttempfrom" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                C<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttempfrom" ErrorMessage="Enter the temp" ForeColor="#FF5050" CssClass="auto-style31"></asp:RequiredFieldValidator>
             </td>
            <td class="auto-style23">
                <asp:TextBox ID="txttempto" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                C<span class="auto-style31"><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txttempto" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td class="auto-style24">
                <asp:Label ID="Label9" runat="server" Text="Windflow"></asp:Label>
                </span>
            </td>
           <td class="auto-style25">
                <asp:TextBox ID="txtwindflowfrom" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">kmph<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtwindflowfrom" ErrorMessage="Enter the windflow" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </span>
             </td>
            <td class="auto-style26">
                <asp:TextBox ID="txtwindflowto" runat="server" Width="50px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">kmph<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtwindflowto" ErrorMessage="*" ForeColor="#FF5050"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td class="auto-style12">
                <asp:Label ID="Label10" runat="server" Text="No of River"></asp:Label>
                </span>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtnoriver" runat="server" Width="80px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtnoriver" ErrorMessage="Enter the no of River" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style29">
                <asp:Label ID="Label11" runat="server" Text="No of Pond"></asp:Label>
                </span>
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="txtnopond" runat="server" Width="80px" CssClass="auto-style31"></asp:TextBox>
                <span class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtnopond" ErrorMessage="Enter the No of Pond" ForeColor="#FF5050"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style27">
                <asp:Label ID="Label12" runat="server" Text="No of Lake"></asp:Label>
                </span>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="txtnolake" runat="server" Width="80px" CssClass="auto-style31"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtnolake" ErrorMessage="Enter the no of Lake" ForeColor="#FF5050" CssClass="auto-style31"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style29">
                <asp:Button ID="Button1" runat="server" Text="Predict" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" Height="23px" Width="124px" CssClass="auto-style31" />
            </td>
            <td class="auto-style30">
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" OnClick="Button2_Click" Height="24px" Width="98px" CssClass="auto-style31" />
            </td>
        </tr>
    </table>
                </td>
            <td class="auto-style3" style="vertical-align: top">
                
               
                <span class="auto-style31">Groundwater Predicted Feet Chart:<br />
                <br />
                </span>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Visible="False" BackColor="Maroon" BackGradientStyle="DiagonalLeft" style="margin-left: 14px">
                    <Series>
                        <asp:Series Name="Series1" YValueMembers="availfeet"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT TOP(3)[availfeet] FROM [predic] ORDER BY eudist"></asp:SqlDataSource>
                   
                        
            </td>
        </tr>
    </table>
     <asp:Timer ID="Timer1" runat="server" OnTick="gettickvalue" 
    Interval="5000" Enabled="False"></asp:Timer>

    <asp:UpdatePanel ID="BannerPanel" runat="server" UpdateMode="Conditional">
<Triggers >
<asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
</Triggers>
 <ContentTemplate>

    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <table style="height: 185px; width: 554px">
            <tr>
                <td>

               
        <table style="height: 153px; width: 240px">
            <tr>
                <td class="auto-style1">
                    Result:
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label13" runat="server" Text="Available Feet 1"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblfeet1" runat="server" Text="No Result" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label14" runat="server" Text="Available Feet 2"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblfeet2" runat="server" Text="No Result" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label16" runat="server" Text="Available Feet 3"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblfeet3" runat="server" Text="No Result" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
                     </td>
                <td>
                    <table style="height: 80px; width: 252px; background-color: #CCCCCC;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label15" runat="server" Text="Average Predicted Feet" Font-Size="Medium"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblavgpredictedfeet" runat="server" Text="0" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                &nbsp;feet</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>

        
    
    <ASPP:PopupPanel BackColor="Maroon" ID="pup" runat="server" OnCloseWindowClick="MycloseWindow"  Width="500px">
       <PopupWindow runat="server">
           
           <ASPP:PopupWindow ID="PopupWindow2" runat="server" BackColor="Maroon" Width="500px">
               
               <asp:Image ID="imgBanner" ImageUrl="~/Images/giphy.gif" runat="server" Visible="False" />
              <div align="center" style="width: 500px; height: 300px">
                   <asp:Label ID="lblprocess" runat="server" Text="Processing Algorithm......."></asp:Label>
                   <asp:Label ID="lblregain" runat="server" Text="Close the window to view result!!!" Visible="false" ForeColor="Red" Font-Size="Medium"></asp:Label>
               </div>
           </ASPP:PopupWindow>
       </PopupWindow>
  </ASPP:PopupPanel>
        
</ContentTemplate>
 </asp:UpdatePanel>
   </asp:Content>
