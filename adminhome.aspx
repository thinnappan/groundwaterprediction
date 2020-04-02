<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8
    {
        height: 32px;
    }
    .auto-style9
    {
        text-align: justify;
        font-weight: normal;
    }
    .auto-style10
    {
        font-style: italic;
    }
    .auto-style11
    {
        font-style: italic;
        font-size: large;
    }
    .auto-style12
    {
        font-size: large;
    }
        .auto-style13
        {
            font-style: italic;
            font-size: x-large;
        }
        .auto-style14
        {
            font-size: x-large;
        }
        .auto-style15
        {
            width: 815px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
        <table style="width: 9%; height: 99px;">
            <tr>
                <td class="auto-style8">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style15">
    <asp:Menu ID="Menu1" runat="server" Height="59px" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="16px" style="margin-top: 0px; margin-left: 0px; color: #CC66FF; font-size: large;" Width="1027px" BackColor="#33CCFF" BorderColor="#33CCFF" BorderStyle="Solid">
        <Items>
            <asp:MenuItem NavigateUrl="~/landtypes.aspx" Text="TYPES OF LAND" Value="TYPES OF LAND"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/soiltypes.aspx" Text="SOIL TYPES" Value="SOIL TYPES"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/layerofwater.aspx" Text="GROUNDWATER LAYERS" Value="GROUNDWATER LAYERS"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/placesincbe.aspx" Text="DATASET PLACES IN COIMBATORE" Value="DATASET PLACES IN COIMBATORE"></asp:MenuItem>
        </Items>
    </asp:Menu>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
            </table>
</p>
                    <table style="width:117%; height: 231px;">
                        <tr>
                            <td class="auto-style9">
                                <span style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: SimHei; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA" class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *)The project entitled <b style="mso-bidi-font-weight: normal">&quot;</b></span><b style="mso-bidi-font-weight: normal"><span class="auto-style13" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">GROUNDWATER 
                                LEVEL PREDICTION USING ARTIFICIAL NEURAL NETWORKS AND MACHINE LEARNING</span><span class="auto-style13" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: SimHei; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA"> &quot;,</span></b><span class="auto-style13" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA"> the</span><span class="auto-style13" style="mso-bidi-font-size: 11.0pt; line-height: 115%; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">
                                </span><span class="auto-style13" style="mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; background: white; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">prediction system is an web based application used for predicting the available feet of groundwater based on the factors of the groundwater.</span><span class="auto-style13" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA"> </span>
                                <span class="auto-style10" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA"> 
                                <br class="auto-style14" />
                                </span><i>
                                <span style="mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">
                                <br class="auto-style14" />
                                </span>
                                <span class="auto-style14" style="mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">*)The case study is based on the Coimbatore region .<br />
                                <br />
                                *)The</span></i><span class="auto-style14" style="mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA"><span class="auto-style10" style="mso-spacerun: yes">&nbsp; </span><i>data sets for the groundwater level in the Coimbatore region is collected from the CWB. This can be achieved by evaluating the current state of Groundwater Resources (GWR) exploitation, use and dynamics; setting-up, calibrating and validating the ANN; and then predicting Groundwater Levels at different lead times. 
                                <br />
                                <br />
                                *)The results show that Groundwater Levels in the study area have been found to reduce rapidly from 2011 to 2019</i></span><span class="auto-style13" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">.<br />
                                <br />
                                </span><span class="auto-style11" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA"><span class="auto-style13" style="line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">*)</span></span><span class="auto-style13" style="mso-bidi-font-size: 14.0pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-fareast-theme-font: minor-fareast; background: white; mso-ansi-language: EN-IN; mso-fareast-language: EN-IN; mso-bidi-language: AR-SA">The 
                                application is specifically designed to predict the groundwater level in Coimbatore city. 
                                <br />
                                <br />
                                *)The Coimbatore city is classified as hundred area and the ground water level is predicted based on the land types like agricultural land, residential land, industrial land and urban land.</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <span class="auto-style12"></td>
                        </tr>
                        </table>
    <p>
        &nbsp;</p>
    <p>
        </span></p>
</asp:Content>




