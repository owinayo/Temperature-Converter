using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Owiny_Ayorech_CPRG214_Lab1
{
    public partial class Default : System.Web.UI.Page
    {
        public string retVal;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            //If we have a value that is not null or empty in our input text box
            if (!string.IsNullOrEmpty(InputTextBox.Text))
            {
                //call convertAll method with input textbox value and dropdown selected values and return value to output textbox
                OutputTextBox.Text = convertAll(double.Parse(InputTextBox.Text), FromDropDownList.SelectedValue, ToDropDownList.SelectedValue);
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            FromDropDownList.SelectedValue = "Celsius";//set from selected value on clear
            ToDropDownList.SelectedValue = "Fahrenheit";//set from selected value on clear
            InputTextBox.Text = "";//clear input textbox
            OutputTextBox.Text = "";//clear out textbox
        }

        private string convertAll(double inputVal, string fromVal, string toVal)
        {
            double outP;//output double variable used to convert output value to string

            //Switch driven by the from drop down list selected value input parameter
            //Multiple conditional cases that execute and assign... 
            //...a converted value to class variable retVal (our method return value)
            switch (fromVal)
            {
                case "Celsius" when toVal == "Celsius":
                    retVal = inputVal.ToString("f2");
                    break;
                case "Celsius" when toVal == "Fahrenheit":
                    outP = (inputVal * 9) / 5 + 32;
                    retVal = outP.ToString("f2");
                    break;
                case "Celsius" when toVal == "Kelvin":
                    outP = inputVal + 273.15; 
                    retVal = outP.ToString();
                    break;
                case "Fahrenheit" when toVal == "Celsius":
                    outP = (inputVal - 32) * 5 / 9; 
                    retVal = outP.ToString("f2");
                    break;
                case "Fahrenheit" when toVal == "Fahrenheit":
                    retVal = inputVal.ToString("f2");
                    break;
                case "Fahrenheit" when toVal == "Kelvin":
                    outP = 273.5 + ((inputVal - 32) * (5 / 9));
                    retVal = outP.ToString();
                    break;
                case "Kelvin" when toVal == "Celsius":
                    outP = inputVal - 273.15;
                    retVal = outP.ToString("f2");
                    break;
                case "Kelvin" when toVal == "Fahrenheit":
                    outP = (inputVal - 273.15) * 9 / 5 + 32;
                    retVal = outP.ToString("f2");
                    break;
                case "Kelvin" when toVal == "Kelvin":
                    retVal = inputVal.ToString("f2");
                    break;
                default:
                    break;
            }

            return retVal;
        }
    }
}