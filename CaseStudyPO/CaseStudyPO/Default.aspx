
<%@ Page Title="POST OFFICE" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CaseStudyPO._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5" style="background-color: #ffffff; border-radius: 15px; padding: 35px; box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.12); border: 2px solid #ff5c5c;">
        <h2 class="text-center mb-4" style="color: #0a3d6f; font-weight: bold; font-family: 'Roboto', sans-serif; font-size: 2.5rem;">POST OFFICE ACCOUNT LIST</h2>

        <!-- Create New Post Office Account Button -->
        <div class="text-end mb-3">
            <a href="CreatePostOfficeAccount.aspx" style="background: linear-gradient(45deg, #005eaa, #f07b00); text-decoration: none; color: white; padding: 12px 25px; font-size: 1.1rem; border-radius: 30px; border: none; box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.2); transition: all 0.3s ease;">Create New Account</a>
        </div>

        <!-- GridView Table -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered" style="border-radius: 10px; border: none; width: 100%; box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" SortExpression="Id" />
                <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Lastname" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Schemename" HeaderText="Scheme Name" SortExpression="Schemename" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                <asp:BoundField DataField="NoOfYears" HeaderText="No. of Years" SortExpression="NoOfYears" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="DetailsPostOfficeAccount.aspx?Id=<%# Eval("Id") %>" class="btn btn-info btn-sm" style="background: linear-gradient(135deg, #0063B1, #00B4D8); color: white; padding: 5px 12px; border-radius: 20px; text-decoration: none; font-weight: bold;">Details</a> 
                        <a href="EditPostOfficeAccount.aspx?Id=<%# Eval("Id") %>" class="btn btn-warning btn-sm" style="background: linear-gradient(45deg, #ffbb00, #ff6f00); color: white; padding: 5px 12px; border-radius: 20px; text-decoration: none; font-weight: bold; margin-left: 8px;">Edit</a> 
                        <a href="DeletePostOfficeAccount.aspx?Id=<%# Eval("Id") %>" class="btn btn-danger btn-sm" style="background: linear-gradient(45deg, #d9534f, #c9302c); color: white; padding: 5px 12px; border-radius: 20px; text-decoration: none; font-weight: bold; margin-left: 8px;">Delete</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#0063B1" ForeColor="white" Font-Bold="true" Font-Size="16px" />
            <RowStyle BackColor="#f7f7f7" />
            <AlternatingRowStyle BackColor="#e6f7ff" />
        </asp:GridView>
    </div>

    <!-- Custom CSS for <th> and Rows -->
    <style>
        /* Styling for <th> elements (Header of the table) */
        .table th {
            background-color: #0063B1; /* Dark Blue for header */
            color: white; /* White text */
            font-size: 1.1rem;
            font-weight: bold;
            text-align: center;
        }

        /* Apply alternating row colors for a clean look */
        .table tbody tr:nth-child(odd) {
            background-color: #f2f2f2; /* Light gray for odd rows */
        }

        .table tbody tr:nth-child(even) {
            background-color: #e6f7ff; /* Lighter blue for even rows */
        }

        /* Hover effect for rows to highlight when the user hovers */
        .table tbody tr:hover {
            background-color: #d3e7ff; /* Subtle light blue when hovering */
            cursor: pointer; /* Show pointer cursor on hover */
        }

        /* Optional: Add a border to table rows and table cells for clearer separation */
        .table th, .table td {
            border: 1px solid #ddd; /* Light gray border */
        }
    </style>
</asp:Content>
