<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        document.onreadystatechange = function () {
  var state = document.readyState
  if (state == 'interactive') {
       document.getElementById('contents').style.visibility="hidden";
  }
  else if (state == 'complete') {
      setTimeout(function(){
         document.getElementById('interactive');
         document.getElementById('load').style.visibility="hidden";
         document.getElementById('contents').style.visibility="visible";
      },1000);
  }
}
    </script>
    <style>
        #load{
    width:100%;
    height:100%;
    position:fixed;
    z-index:9999;
    /*background:url("https://www.creditmutuel.fr/cmne/fr/banques/webservices/nswr/images/loading.gif") no-repeat center center rgba(0,0,0,0.25)*/
     background:url("Images/giphy.gif") no-repeat center center rgb(255, 255, 255)
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="load"></div>
    <div id="contents">
          jlkjjlkjlkjlkjlklk
    </div>
    </form>
</body>
</html>
