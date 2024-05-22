﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NGO_PROJ.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Athle E Team - Member Login</title>
    <!-- base:css -->
    <link rel="stylesheet" href="../../vendors/typicons/typicons.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../../images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-scroller">
            <div class="container-fluid page-body-wrapper full-page-wrapper">
                <div class="content-wrapper d-flex align-items-center auth px-0">
                    <div class="row w-100 mx-0">
                        <div class="col-lg-4 mx-auto">
                            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                                <h4 class="mb-4 text-center">Athle E Team Platform</h4>
                                <h6 class="font-weight-light text-center mb-4">Member Sign in to continue</h6>
                                <div class="form-group">
                                    <asp:TextBox ID="txtun" runat="server" class="form-control form-control-lg" placeholder="Username"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpass" runat="server" class="form-control form-control-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="mt-4">
                                    <asp:Button ID="btnSignIn" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
                                </div>
                                <div class="mt-4 text-center">
                                    <span class="text-muted mr-2">Don't have an account?</span>
                                    <asp:Button ID="BtnRegistration" class="btn btn-outline-primary" runat="server" Text="New Registration" OnClick="BtnRegistration_Click" />
                                </div>
                                <div class="my-3 d-flex justify-content-between align-items-center">
                                    <div class="form-check">
                                        <label class="form-check-label text-muted">
                                            <input type="checkbox" class="form-check-input">
                                            Keep me signed in
                                        </label>
                                    </div>
                                    <asp:Label ID="lblmsg" runat="server" class="text-danger"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- base:js -->
        <script src="../../vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- inject:js -->
        <script src="../../js/off-canvas.js"></script>
        <script src="../../js/hoverable-collapse.js"></script>
        <script src="../../js/template.js"></script>
        <script src="../../js/settings.js"></script>
        <script src="../../js/todolist.js"></script>
        <!-- endinject -->
    </form>
</body>
</html>