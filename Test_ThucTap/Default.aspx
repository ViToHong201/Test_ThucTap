<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test_ThucTap.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.6.0.js" type="text/javascript"></script>
</head>
<body>
    <style type="text/css">
        body{
                background-color: beige;
        }
        .main{
                display: flex;
                justify-content: center;
                padding-top: 10%;
                font-size:30px;

        }
        
        .btn_get_values{
            background-color:aqua;
        }

    </style>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" ID="sm1" EnablePageMethods="true"/>
        <div class="main">
            <script type="text/javascript">
                function getValues() {
                    var text1 = $('#txt1').val();
                    PageMethods.GetValues(text1, getValues_Success, getValues_Fail);
                }
                function getValues_Success(msg) {
                    $('#div1').html(msg);
                }
                function getValues_Fail(msg) {
                    alert(msg.get_message());
                }
            </script>
               <input type="text" id="txt1" /><br />
               <input class="btn_get_values" type="button" onclick="getValues();" value ="Get Values"/><br />
                <br />
            

        </div>
        <div class="main" id="div1"></div>
    </form>
</body>
</html>
