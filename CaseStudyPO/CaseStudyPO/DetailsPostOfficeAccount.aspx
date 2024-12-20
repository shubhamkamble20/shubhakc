

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsPostOfficeAccount.aspx.cs" Inherits="CaseStudyPO.DetailsPostOfficeAccount" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Office Account Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .account-card {
            background-color: #ffffff;
            border: 2px solid #ccc;
            border-radius: 10px;
            padding: 30px;
            max-width: 750px;
            width: 100%;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .account-header {
            width: 100%;
            background: linear-gradient(45deg, #ff7e5f, #feb47b, #4CAF50); /* Multicolor Gradient */
            color: white;
            padding: 15px;
            font-size: 1.8rem;
            text-align: center;
            border-radius: 10px 10px 0 0;
            margin-bottom: 20px;
            box-shadow: 0 3px 5px rgba(0, 0, 0, 0.1);
        }

        .account-content {
            width: 100%;
        }

        .row {
            display: flex;
            justify-content: space-between;
            margin: 12px 0;
            padding: 12px;
            background-color: #f7f7f7;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .column {
            flex: 1;
            text-align: left;
            font-size: 1.1rem;
            color: #333;
            padding-left: 10px;
        }

        /* Updated label design with "Go Back" button color */
        .column label {
            font-weight: bold;
            font-size: 1rem; /* Reduced font size */
            color: white; /* Text color set to white */
            background: linear-gradient(45deg, #ff7e5f, #feb47b); /* Gradient from the "Go Back" button */
            padding: 6px 12px; /* Padding for spacing */
            border-radius: 5px; /* Rounded corners for the label */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
            transition: all 0.3s ease-in-out; /* Smooth transition effect */
        }

        /* On hover effect for the label */
        .column label:hover {
            background: linear-gradient(45deg, #feb47b, #ff7e5f); /* Reverse gradient on hover */
            color: white; /* Ensure text stays white on hover */
            transform: translateY(-3px); /* Lift the label up slightly */
        }

        .account-footer a {
            text-decoration: none;
            background: linear-gradient(45deg, #ff7e5f, #feb47b); /* Gradient color */
            color: white;
            padding: 12px 25px;
            font-size: 1.2rem;
            border-radius: 8px;
            transition: background 0.3s ease, transform 0.2s ease;
            margin-top: 20px;
            display: inline-block;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .account-footer a:hover {
            background: linear-gradient(45deg, #feb47b, #ff7e5f);
            transform: translateY(-3px);
        }

        /* Updated color for the footer message */
        .account-footer p {
            font-size: 1.1rem;
            color: #ff7e5f; /* Coral color to match the theme */
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
        }

        .account-header img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        @media (max-width: 768px) {
            .account-card {
                padding: 20px;
            }

            .account-header {
                font-size: 1.5rem;
            }

            .column {
                font-size: 1rem;
            }

            .account-footer a {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="account-card">
            <!-- Post Office Header with Placeholder Image -->
            <div class="account-header">
                <img src="images/postlogo.png" alt="Post Office Logo" />
                <h2>Post Office Account Details</h2>
            </div>

            <!-- Account Details Section -->
            <div class="account-content">
                <!-- Row 1: First Name and Last Name -->
                <div class="row">
                    <div class="column">
                        <label>First Name:</label>
                        <asp:Label Id="lblFirstName" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Last Name:</label>
                        <asp:Label Id="lblLastName" runat="server" Text="" />
                    </div>
                </div>

                <!-- Row 2: Address and Scheme Name -->
                <div class="row">
                    <div class="column">
                        <label>Address:</label>
                        <asp:Label ID="lblAddress" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Scheme Name:</label>
                        <asp:Label ID="lblSchemeName" runat="server" Text="" />
                    </div>
                </div>

                <!-- Row 3: Balance, Number of Years, and Mobile -->
                <div class="row">
                    <div class="column">
                        <label>Balance:</label>
                        <asp:Label ID="lblBalance" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Years:</label>
                        <asp:Label ID="lblNoOfYears" runat="server" Text="" />
                    </div>
                    <div class="column">
                        <label>Mobile:</label>
                        <asp:Label ID="lblMobile" runat="server" Text="" />
                    </div>
                </div>
            </div>

            <!-- Footer Section with Go Back Button -->
            <div class="account-footer">
                <p>Thank you for using our Post Office services.</p>
                <a href="Default.aspx">Go Back</a>
            </div>
        </div>
    </form>
</body>
</html>

