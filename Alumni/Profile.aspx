<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Alumni/MainPage_alumni.Master" CodeBehind="Profile.aspx.vb" Inherits="Alumni_Platform_hackathon.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .profile-container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 40px;
            margin: 20px 0;
            animation: fadeIn 0.5s ease-in-out;
        }

        .profile-container h2 {
            color: #007bff;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-control:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .submit-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
            width: 100%;
            font-size: 16px;
        }

        .submit-button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .profile-container {
                padding: 20px;
            }
            .submit-button {
                font-size: 14px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="profile-container">
        <h2>Profile Information</h2>
        <asp:Panel ID="PanelProfile" runat="server">
            <div class="form-group">
                <label for="FullName">Full Name</label>
                <asp:TextBox ID="FullNameTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="Email">Email</label>
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="Phone">Phone Number</label>
                <asp:TextBox ID="PhoneTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="DOB">Date of Birth</label>
                <asp:TextBox ID="DOBTextBox" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="City">City</label>
                <asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control" />
            </div>
            <asp:Button ID="UpdateButton" runat="server" Text="Update Profile" CssClass="submit-button"  />
        </asp:Panel>
    </div>
</asp:Content>
