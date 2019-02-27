using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projectcalculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
           double EnterLength = Convert.ToDouble(txtLength.Text);
            double EnterWidth = Convert.ToDouble(txtWidth.Text);
            string ProcessorName = Convert.ToString(txtProcessorName.Text);
           
            string  Area = " Hello  " + ProcessorName +" " + "Area is " + ( EnterLength * EnterWidth);
            txtArea.Text = Area;
           
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtLength.Text = "";
            txtWidth.Text = "";
            txtProcessorName.Text = "";
            txtArea.Text = "";



        }
    }
}