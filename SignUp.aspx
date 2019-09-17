<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication2.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleUp.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
     <script type="text/javascript">
         function successalert() {
             swal.fire({
                 position:'top-end',type:'success',title:'Registered Succesfully',timer: 1500
             })
         }
        function validateSignup(event) {
            var current_Url = window.location.href;
            if (current_Url.includes("SignUp")) {
                if (document.getElementById('TextBox5').value.length == 0) {
                    alert('First Name should Not be Empty');
                    document.getElementById('TextBox5').focus();
                    return false;
                }
                else if (document.getElementById('TextBox4').value.length == 0) {
                    alert('Last Name should Not be Empty');
                    document.getElementById('TextBox4').focus();
                    return false;
                }
                else if (document.getElementById('TextBox3').value.length == 0) {
                    alert('E-Mail should Not be Empty');
                    document.getElementById('TextBox3').focus();
                    return false;
                }
                else if (document.getElementById('TextBox1').value.length == 0) {
                    alert('Username should Not be Empty');
                    document.getElementById('TextBox1').focus();
                    return false;
                }
                else if (document.getElementById('TextBox2').value.length == 0) {
                    alert('Password should Not be Empty');
                    document.getElementById('TextBox2').focus();
                    return false;
                }
                else if (document.getElementById('TextBox6').value.length == 0) {
                    alert('Confirm Password should Not be Empty');
                    document.getElementById('TextBox6').focus();
                    return false;
                }
                else {
                    return true;
                }

            }
            else {
                return true;
            }



        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <nav class="pt-3">
             <a href="#" class="px-5">Grow</a>
                <asp:Button ID="Button1" CssClass="btn btn-success mr-4 mt-3 px-4" runat="server" Text="Login" OnClick="Button1_Click" />
            </nav>
            <div class="row">
            <div class="col-6 cols1">
                <h1>Sign Up - User</h1>
                <asp:TextBox ID="TextBox5" Placeholder="User ID" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox4" Placeholder="First Name" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" Placeholder="Last Name" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox1" Placeholder="E-mail" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" Placeholder="Password" CssClass="form-control" TextMode="password"  runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox6" Placeholder="Confirm Password" CssClass="form-control" TextMode="password" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                 <br />
                <asp:Button ID="Submit" runat="server" cssclass="btn px-5" Text="Next" onclientclick="return validateSignup()" OnClick="Submit_Click" />
            </div>
           <div class="container">
               <span class="text1">Welcome To</span>
               <span class="text2">Grow</span>
            </div>
            </div>
        </div>
    </form>
</body>
</html>

