<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPostOfficeAccount.aspx.cs" Inherits="CaseStudyPO.EditPostOfficeAccount" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Edit Post Office Booking</title>

    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .booking-form {
        background: white;
        border: 2px solid red;
        border-radius: 8px;
        padding: 30px;
        box-shadow: 0 4px 10px rgba(255, 0, 0, 0.3);
        width: 100%;
        max-width: 500px;
    }

    .booking-form h2 {
        text-align: center;
        color: red;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: red;
    }

    .form-group input[type="text"],
    .form-group input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 2px solid red;
        border-radius: 5px;
        font-size: 14px;
    }

    .form-group input[type="text"]:focus,
    .form-group input[type="number"]:focus {
        outline: none;
        border-color: #ff4d4d;
        background-color: #fff5f5;
    }

    .form-buttons {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }

    .form-buttons input[type="submit"],
    .form-buttons a {
        background-color: red;
        color: white;
        border: none;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }

    .form-buttons a {
        text-align: center;
        width: 45%;
    }

    .form-buttons input[type="submit"]:hover,
    .form-buttons a:hover {
        background-color: #b30000;
    }

    .error-message {
        color: red;
        font-size: 12px;
        margin-top: 5px;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="booking-form">
            <h2>Edit Post Office Booking</h2>

            <div class="form-group">
                <label for="txtFirstname">First Name:</label>
                <asp:TextBox ID="txtFirstname" runat="server" />
                <asp:RequiredFieldValidator ID="rfvFirstname" runat="server" ControlToValidate="txtFirstname"
                    ErrorMessage="First Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtLastname">Last Name:</label>
                <asp:TextBox ID="txtLastname" runat="server" />
                <asp:RequiredFieldValidator ID="rfvLastname" runat="server" ControlToValidate="txtLastname"
                    ErrorMessage="Last Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" />
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtSchemename">Scheme Name:</label>
                <asp:TextBox ID="txtSchemename" runat="server" />
                <asp:RequiredFieldValidator ID="rfvSchemename" runat="server" ControlToValidate="txtSchemename"
                    ErrorMessage="Scheme Name is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtBalance">Balance:</label>
                <asp:TextBox ID="txtBalance" runat="server" />
                <asp:RequiredFieldValidator ID="rfvBalance" runat="server" ControlToValidate="txtBalance"
                    ErrorMessage="Balance is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtNoOfYears">Number of Years:</label>
                <asp:TextBox ID="txtNoOfYears" runat="server" />
                <asp:RequiredFieldValidator ID="rfvNoOfYears" runat="server" ControlToValidate="txtNoOfYears"
                    ErrorMessage="Number of Years is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtMobile">Mobile:</label>
                <asp:TextBox ID="txtMobile" runat="server" />
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="Mobile is required" CssClass="error-message"></asp:RequiredFieldValidator>
            </div>

            <div class="form-buttons">
                <a href="Default.aspx">Go Back</a>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </div>
        </div>
    </form>
</body>
</html>


