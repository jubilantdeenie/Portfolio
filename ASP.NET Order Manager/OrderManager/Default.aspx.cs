using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OrderManager
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
        }
 
        protected void OrderButton_Click(object sender, EventArgs e)
        {
            // Gathers values for order from user input...

            var newOrder = new DTO.OrderTransfer();

            DTO.Enums.SizeType size;
            if (Enum.TryParse(SizeDropDownList.SelectedValue, out size))
            {
                newOrder.Size = size;
            }

            DTO.Enums.CrustType crust;
            if (Enum.TryParse(CrustDropDownList.SelectedValue, out crust))
            {
                newOrder.Crust = crust;
            }

            if (SausageCheckBox.Checked) newOrder.Sausage = true;
            if (PepperroniCheckBox.Checked) newOrder.Pepperroni = true;
            if (OnionCheckBox.Checked) newOrder.Onions = true;
            if (GrnPepperCheckBox.Checked) newOrder.GrnPeppers = true;

            newOrder.Name = NameTextBox.Text;
            newOrder.Address = AddressTextBox.Text;
            newOrder.Zip = ZipTextBox.Text;
            newOrder.Phone = PhoneTextBox.Text;

            if (CashRadioButton.Checked) newOrder.PayType = DTO.Enums.PaymentType.Cash;
            if (CreditRadioButton.Checked) newOrder.PayType = DTO.Enums.PaymentType.Credit;
            
            newOrder.TotalCost = Domain.PriceCalculator.CalculateOrder(newOrder);

            // ...and passes them to the OrdersManager in domain layer.

            try
            {
                Domain.OrdersManager.AddOrder(newOrder);
                Response.Redirect("Success.aspx");
            }
            catch (Exception ex)
            {
                TotalLabel.Text = ex.Message;
            }
        }
    }
}