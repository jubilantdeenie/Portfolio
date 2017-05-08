<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OrderManager._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-header">
        <h3 class="lead">A pizza place with a menu you can order from!</h3>
    </div>
    <div>
        <div class="form-group">
            <label>Size:</label>
            <asp:DropDownList ID="SizeDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value="Select">Select One...</asp:ListItem>
                <asp:ListItem Value="Small">Small(12&quot; - $12)</asp:ListItem>
                <asp:ListItem Value="Medium">Medium(14&quot; - $14)</asp:ListItem>
                <asp:ListItem Value="Large">Large(16&quot; - $16)</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
        <div class="form-group">
            <label>Crust:</label>
            <asp:DropDownList ID="CrustDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value="Select">Select One...</asp:ListItem>
                <asp:ListItem Value="Regular">Regular</asp:ListItem>
                <asp:ListItem Value="Thin">Thin</asp:ListItem>
                <asp:ListItem Value="Thick">Thick( +$2)</asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>

        <div class="checkbox">
            <label>
            <asp:CheckBox ID="SausageCheckBox" runat="server" />
            Sausage</label></div>
        <div class="checkbox">
            <label>
            <asp:CheckBox ID="PepperroniCheckBox" runat="server" />
            Pepperroni</label></div>
        <div class="checkbox">
            <label>
            <asp:CheckBox ID="OnionCheckBox" runat="server" />
            Onions</label></div>
        <div class="checkbox">
            <label>
            <asp:CheckBox ID="GrnPepperCheckBox" runat="server" />
            Green Peppers</label></div>
        <h3>Deliver To:</h3>
        <div class="form-group">
            <label>
            Name:</label>
            <asp:TextBox ID="NameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>
            Address:</label>
            <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>
            Zip:</label>
            <asp:TextBox ID="ZipTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>
            Phone:</label>
            <asp:TextBox ID="PhoneTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <h3>Payment:</h3>
        <div class="radio">
            <label>
            <asp:RadioButton ID="CashRadioButton" runat="server" Checked="true" GroupName="PaymentType" />
            Cash</label></div>
        <div class="radio">
            <label>
            <asp:RadioButton ID="CreditRadioButton" runat="server" GroupName="PaymentType" />
            Credit</label></div>
        <asp:Button ID="OrderButton" runat="server" class="btn btn-lg btn-primary" OnClick="OrderButton_Click" Text="Order" />
        <br />
        <br />
        <asp:Label ID="TotalLabel" runat="server"></asp:Label>
    </div>

    </asp:Content>
