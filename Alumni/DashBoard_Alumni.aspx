<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Alumni/MainPage_alumni.Master" CodeBehind="DashBoard_Alumni.aspx.vb" Inherits="Alumni_Platform_hackathon.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-card {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 15px 0;
            transition: transform 0.3s, box-shadow 0.3s;
            animation: slideIn 0.5s ease-in-out;
        }

        .dashboard-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 30px rgba(0, 0, 0, 0.2);
        }

        .dashboard-card h4 {
            color: #007bff;
            margin-bottom: 10px;
            transition: color 0.3s;
        }

        .dashboard-card h4:hover {
            color: #0056b3;
        }

        @keyframes slideIn {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        h3 {
            color: #007bff;
            margin-bottom: 20px;
            text-align: center;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .dashboard-card {
                padding: 15px;
            }

            h3 {
                font-size: 24px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Welcome to the Alumni Dashboard!</h3>
    <div class="dashboard-card">
        <h4>Latest Events</h4>
        <asp:Repeater ID="rptRecentEvents" runat="server">
            <ItemTemplate>
                <div class="event-item">
                    <h5><%# Eval("EventName") %></h5>
                    <p>Date: <%# Eval("EventDate", "{0:MMMM dd, yyyy}") %></p>
                    <p><%# Eval("Description") %></p>
                    <asp:HyperLink ID="LinkEventDetails" runat="server" NavigateUrl='<%# Eval("EventUrl") %>' CssClass="btn-link">View Details</asp:HyperLink>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Literal ID="litNoEvents" runat="server" Visible="false" Text="<p>No recent events available.</p>"></asp:Literal>
    </div>
    <div class="dashboard-card">
        <h4>Networking Opportunities</h4>
        <p>Explore networking opportunities with fellow alumni.</p>
        <asp:HyperLink ID="LinkNetworking" runat="server" NavigateUrl="~/Networking.aspx" CssClass="btn-link">Explore Networking</asp:HyperLink>
    </div>
    <div class="dashboard-card">
        <h4>Profile Updates</h4>
        <p>Update your profile information to stay relevant!</p>
        <asp:HyperLink ID="LinkProfileUpdates" runat="server" NavigateUrl="~/Profile.aspx" CssClass="btn-link">Update Profile</asp:HyperLink>
    </div>

</asp:Content>
