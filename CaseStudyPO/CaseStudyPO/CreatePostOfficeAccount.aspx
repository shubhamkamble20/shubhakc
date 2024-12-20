<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePostOfficeAccount.aspx.cs" Inherits="CaseStudyPO.CreatePostOfficeAccount" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Create Post Office Account</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        /* Form Container */
        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 50px auto;
            text-align: center;
            border: 4px solid transparent;
            background-image: linear-gradient(45deg, #a8d0e6, #e3f2fd, #ffebee, #f0f4f8, #e0f7fa);
            background-origin: border-box;
            background-clip: content-box;
        }

        /* Heading Styling */
        h2 {
            color: #4caf50;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        /* Input Field Styling */
        input[type="text"],
        input[type="number"],
        input[type="tel"],
        input[type="date"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            font-size: 1rem;
            border-radius: 8px;
            border: 2px solid #81c784;
            background-color: #f1f8e9;
            transition: border 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="tel"]:focus,
        input[type="date"]:focus {
            border: 2px solid #66bb6a;
            box-shadow: 0 0 5px rgba(102, 187, 106, 0.7);
        }

        /* Label Styling */
        label {
            font-size: 1.1rem;
            font-weight: bold;
            color: #8e44ad;
            margin-bottom: 5px;
            display: block;
        }

        /* Submit Button Styling */
        .btn-submit,
        .btn-go-back {
            background: linear-gradient(45deg, #007bff, #00b0ff, #1e88e5, #2196f3);
            color: white;
            padding: 10px 18px;
            border: none;
            border-radius: 25px;
            font-size: 1rem;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
            transition: background 0.3s ease, transform 0.3s ease;
            margin-top: -15px;
            margin-bottom: 20px;
            margin-right:20px;
            text-decoration:none;
        }

        .btn-submit:hover,
        .btn-go-back:hover {
            background: linear-gradient(45deg, #5fa9e8, #38a1db);
            transform: translateY(-2px);
        }

        /* Go Back Button Styling */
       

        .error-message {
            color: #e74c3c;
            font-size: 1rem;
            margin-top: 5px;
        }

        /* Form Buttons Container */
        .form-buttons {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Space for Postman Image */
        .postman-image {
            height: 150px;
            width: 150px;
            background-image:url("../../Images/apost.jpg");
            margin-bottom: 20px;
            border-radius: 50%;
            margin: 0 auto;
        }

        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
                width: 90%;
            }

            h2 {
                font-size: 1.6rem;
            }

            .btn-submit {
                font-size: 1rem;
            }

            .form-buttons a {
                font-size: 0.7rem;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <!-- Postman Image Section -->
            <div class="postman-image">
                <!-- Replace the source URL with your image URL -->
            </div>

            <h2>Create New Post Office Account</h2>

            <table>
                <!-- First Name -->
                <tr>
                    <td><label for="txtFirstName">First Name:</label></td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvFirstName" 
                            runat="server" 
                            ControlToValidate="txtFirstName" 
                            ErrorMessage="First Name is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Last Name -->
                <tr>
                    <td><label for="txtLastName">Last Name:</label></td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvLastName" 
                            runat="server" 
                            ControlToValidate="txtLastName" 
                            ErrorMessage="Last Name is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Address -->
                <tr>
                    <td><label for="txtAddress">Address:</label></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvAddress" 
                            runat="server" 
                            ControlToValidate="txtAddress" 
                            ErrorMessage="Address is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Scheme Name -->
                <tr>
                    <td><label for="txtSchemeName">Scheme Name:</label></td>
                    <td>
                        <asp:TextBox ID="txtSchemeName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvSchemeName" 
                            runat="server" 
                            ControlToValidate="txtSchemeName" 
                            ErrorMessage="Scheme Name is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Balance -->
                <tr>
                    <td><label for="txtBalance">Balance:</label></td>
                    <td>
                        <asp:TextBox ID="txtBalance" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvBalance" 
                            runat="server" 
                            ControlToValidate="txtBalance" 
                            ErrorMessage="Balance is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- No of Years -->
                <tr>
                    <td><label for="txtNoOfYears">No. of Years:</label></td>
                    <td>
                        <asp:TextBox ID="txtNoOfYears" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvNoOfYears" 
                            runat="server" 
                            ControlToValidate="txtNoOfYears" 
                            ErrorMessage="No. of Years is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Mobile -->
                <tr>
                    <td><label for="txtMobile">Mobile:</label></td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="rfvMobile" 
                            runat="server" 
                            ControlToValidate="txtMobile" 
                            ErrorMessage="Mobile is required" 
                            CssClass="error-message"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>

            <!-- Form Buttons -->
            <div class="form-buttons">
                <a href="Default.aspx" class="btn-go-back">Go Back</a>
                <asp:Button ID="btnSubmit" runat="server" Text="Create Account" CssClass="btn-submit" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
