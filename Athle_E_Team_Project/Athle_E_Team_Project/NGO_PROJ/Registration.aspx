<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="NGO_PROJ.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Student Community Platform - Member Registration</title>
    <link rel="stylesheet" href="../../vendors/typicons/typicons.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
    <link rel="shortcut icon" href="../../images/favicon.png" />
    <style>
        .form-group {
            margin-bottom: 1.5rem;
        }
        .form-control-lg {
            font-size: 1.25rem;
            padding: 0.5rem 1rem;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }
        .auth-form-btn {
            padding: 0.75rem 1.5rem;
            font-size: 1.25rem;
        }
        .text-danger {
            color: #dc3545;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center auth px-0">
                    <div class="row w-100 mx-0">
                        <div class="col-lg-8 mx-auto">
                            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                                <h4>Athle E Team - Member Registration</h4>
                                <h6 class="font-weight-light">&nbsp;</h6>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtfname">First Name</label>
                                            <asp:TextBox ID="txtfname" runat="server" class="form-control form-control-lg" placeholder="First Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="First Name is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtmname">Middle Name</label>
                                            <asp:TextBox ID="txtmname" runat="server" class="form-control form-control-lg" placeholder="Middle Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmname" Display="Dynamic" ErrorMessage="Middle Name is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtlname">Last Name</label>
                                            <asp:TextBox ID="txtlname" runat="server" class="form-control form-control-lg" placeholder="Last Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Last Name is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtemail">Email</label>
                                            <asp:TextBox ID="txtemail" runat="server" class="form-control form-control-lg" placeholder="Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtContact">Contact Number</label>
                                            <asp:TextBox ID="txtContact" runat="server" class="form-control form-control-lg" placeholder="Contact Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContact" Display="Dynamic" ErrorMessage="Contact Number is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" Display="Dynamic" ErrorMessage="Invalid Contact Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[789]\d{9}$" CssClass="text-danger"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtstate">State</label>
                                            <asp:TextBox ID="txtstate" runat="server" class="form-control form-control-lg" placeholder="State"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtstate" Display="Dynamic" ErrorMessage="State is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtcity">City</label>
                                            <asp:TextBox ID="txtcity" runat="server" class="form-control form-control-lg" placeholder="City"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="City is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtadd">Address</label>
                                            <asp:TextBox ID="txtadd" runat="server" class="form-control form-control-lg" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtadd" Display="Dynamic" ErrorMessage="Address is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="txtarea">Area Name</label>
                                            <asp:TextBox ID="txtarea" runat="server" class="form-control form-control-lg" placeholder="Area Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtarea" Display="Dynamic" ErrorMessage="Area Name is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="FileUpload1">Upload Photo</label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="Profile Image is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="txtUname">Username</label>
                                            <asp:TextBox ID="txtUname" runat="server" class="form-control form-control-lg" placeholder="Username"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtUname" Display="Dynamic" ErrorMessage="Username is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="txtpassowrd">Password</label>
                                            <asp:TextBox ID="txtpassowrd" runat="server" class="form-control form-control-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpassowrd" Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red" SetFocusOnError="True" CssClass="text-danger"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password must contain at least 8 characters, one digit, and one special character" ControlToValidate="txtpassowrd" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$" CssClass="text-danger"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-3">
                                    <asp:Button ID="BtnRegistration" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Submit" OnClick="BtnRegistration_Click" />
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <asp:Button ID="Button2" class="btn btn-block btn-secondary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Back" OnClick="Button2_Click" CausesValidation="False" />
                                    <asp:Label ID="lblmsg" runat="server" CssClass="text-danger"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="../../vendors/js/vendor.bundle.base.js"></script>
        <script src="../../js/off-canvas.js"></script>
        <script src="../../js/hoverable-collapse.js"></script>
        <script src="../../js/template.js"></script>
        <script src="../../js/settings.js"></script>
        <script src="../../js/todolist.js"></script>
    </form>
</body>
</html>