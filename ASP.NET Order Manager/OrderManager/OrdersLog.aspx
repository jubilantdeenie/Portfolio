<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdersLog.aspx.cs" Inherits="OrderManager.OrdersLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
*{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>Order Manager</h1>
                <asp:GridView ID="OrdersGridView" runat="server" AutoGenerateColumns="False" OnRowCommand="OrdersGridView_RowCommand">
                    <Columns>
                        <asp:ButtonField Text="Completed" />
                        <asp:BoundField DataField="OrderId" HeaderText="OrderId" />
                        <asp:BoundField DataField="Size" HeaderText="Size" />
                        <asp:BoundField DataField="Crust" HeaderText="Crust" />
                        <asp:CheckBoxField DataField="Pepperroni" HeaderText="Pepperroni" />
                        <asp:CheckBoxField DataField="Sausage" HeaderText="Sausage" />
                        <asp:CheckBoxField DataField="Onions" HeaderText="Onions" />
                        <asp:CheckBoxField DataField="GrnPeppers" HeaderText="Green Peppers" />
                        <asp:BoundField DataField="TotalCost" HeaderText="Total Cost" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Zip" HeaderText="Zip" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="PayType" HeaderText="Payment Type" />
                        <asp:CheckBoxField DataField="Completed" HeaderText="Completed" />
                    </Columns>
                </asp:GridView>
            </div>
            <p>
                <asp:Label ID="resultLabel" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
