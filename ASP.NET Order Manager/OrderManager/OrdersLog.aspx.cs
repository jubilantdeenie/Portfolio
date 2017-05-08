using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrderManager
{
    public partial class OrdersLog : System.Web.UI.Page
    {
        // Displays order information in grid view on Orders Log page on page load.
        protected void Page_Load(object sender, EventArgs e)
        {
            displayOrders();
        }
        private void displayOrders()
        {
            refreshGrid();
        }

        protected void OrdersGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = OrdersGridView.Rows[index];
            var orderValue = row.Cells[1].Text.ToString();
            var orderId = Guid.Parse(orderValue);
            Domain.OrdersManager.CompleteOrder(orderId);
            refreshGrid();
        }

        // Displays order information in grid view on Orders Log page on update.
        private void refreshGrid()
        {
            var orders = Domain.OrdersManager.GetOrders();
            OrdersGridView.DataSource = orders.Where(p => p.Completed == false).ToList();
            OrdersGridView.DataBind();
        }
    }
}