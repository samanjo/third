<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script type="text/javascript">
        function successalert() {
            swal.fire({
                position: 'top-end', type: 'success', title: 'Log-in Succesfull', timer: 1500
            })
        }
        function validateSignup(event){
            var current_Url = window.location.href;
            if (current_Url.includes("Login")){
                if (document.getElementById('DropDownList1').value.length == 0) {
                    alert('Select One Option to sign-up');
                    document.getElementById('DropDownList1').focus();
                    return false;
                }
            }
        }
        function validateLogin(event) {
            var current_Url = window.location.href;
            if (current_Url.includes("Login")) {
                if (document.getElementById('TextBox1').value.length == 0) {
                    alert('Username should Not be Empty');
                    document.getElementById('TextBox1').focus();
                    return false;
                }
                else if (document.getElementById('TextBox2').value.length == 0) {
                    alert('Password should Not be Empty');
                    document.getElementById('TextBox2').focus();
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
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist">
                    <asp:ListItem Value="">Select</asp:ListItem>
                    <asp:ListItem Value="Admin">Admin</asp:ListItem>
                    <asp:ListItem Value="User">User</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" CssClass="btn btn-success mr-4 mt-3 px-4" runat="server" Text="Sign Up" onclientclick="return validateSignup()" OnClick="Button1_Click" />
            </nav>
            <div class="row">
            <div class="col-6 cols1">
                <h1>Login</h1>
                <asp:TextBox ID="TextBox1" Placeholder="Username" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" Placeholder="Password" CssClass="form-control" TextMode="password"  runat="server"></asp:TextBox>
                <br />
                 <br />
                <label for="checkbox"><asp:CheckBox ID="CheckBox1" runat="server" />Remember Me</label>
                <asp:Button ID="Submit" runat="server" cssclass="btn px-5" Text="Login" onclientclick="return validateLogin()" OnClick="Submit_Click"/>
            </div>
           <div class="col-6">
               <p>Point Where knowledge<br />
                   gets its Assurance!</p>
            </div>
            </div>
        </div>
    </form>
</body>
</html>
