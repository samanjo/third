<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecurityQues3.aspx.cs" Inherits="WebApplication2.SecurityQues3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Security Ques</title>
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleUp.css" rel="stylesheet" />
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script type="text/javascript">
        function successalert() {
            swal.fire({
                position: 'top-end', type: 'success', title: 'Log-in Succesfull', timer: 1500
            })
        }
        function validateSecurityQues3(event) {
            var current_Url = window.location.href;
            if (current_Url.includes("SecurityQues3")) {
                if (document.getElementById('DropDownList1').value.length == 0) {
                    alert('Select One Security Question');
                    document.getElementById('DropDownList1').focus();
                    return false;
                }
                else if (document.getElementById('TextBox1').value.length == 0) {
                    alert('Answer should Not be Empty');
                    document.getElementById('TextBox1').focus();
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
                <asp:Button ID="Button1" CssClass="btn btn-success mr-4 mt-3 px-4" runat="server" Text="Back" OnClick="Button1_Click" />
            </nav>
            <div class="row">
            <div class="col-6 cols1">
                <h1>Security Questions - 3</h1>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist1"></asp:DropDownList>
                <asp:TextBox ID="TextBox1" Placeholder="Answer" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                 <br />
                <asp:Button ID="Submit" runat="server" cssclass="btn px-5" Text="Submit" onclientclick="return validateSecurityQues3()" OnClick="Submit_Click" />
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
