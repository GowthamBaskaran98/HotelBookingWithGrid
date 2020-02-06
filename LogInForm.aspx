<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="WebApplication2.LogInForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="LogInForm" runat="server">
    <div align="center">
        <h1 style="background-color : aqua">HOTEL BOOKING APP</h1> 
        <h2 style="background-color : cornflowerblue ">Log In</h2>
        <table class="auto-style1" align ="center">
                <tr>  
                    <td>User ID :</td>  
                    <td>  
                        <asp:TextBox ID="userId" runat="server"></asp:TextBox>  
                    </td>
               </tr> 
                 <tr>  
                    <td>Password :</td>  
                    <td>  
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>  
                    </td>
                </tr>
                 <tr>                      
                    <td>  
                        <asp:Button ID="Submit" runat="server" Text="Submit" style="height: 26px"  OnClick ="Submit_Clicked"/>
                    </td>  
                    <td>
                        <asp:Button ID="logIn" runat="server" Text="Create New Account" style="height: 26px"  OnClick ="LogIn_Clicked"/>  
                    </td>
                </tr>  
            </table>
    </div>
    </form>
</body>
</html>
