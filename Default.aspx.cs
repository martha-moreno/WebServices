using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void inputString_TextChanged(object sender, EventArgs e)
        {

        }
        /****************************STRING SORT CODE STARTS HERE********************************************************************************/
        //Sort String Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            StringSortService1.Service1Client sortService = new StringSortService1.Service1Client();//instance to StringSortService1

            //Validate Input
            try
            {

                if (inputString.Text.IndexOf(',') != -1)                         //Check if input contains at least a comma
                {
                    labelWarning.Visible = false;                               // clear warning label
                    string[] stringSeparations = inputString.Text.Split(',');   // split strings by commas
                    foreach (var separation in stringSeparations)               // loops to check if elements are integers
                    {
                        int checkIntegers = Int32.Parse(separation);
                    }
                    string sortedString = sortService.Sort(inputString.Text);    //call to service operation and result assigned to a string variable
                    outputString.Text = sortedString;                           //display sorted string into textbox
                }
                else
                {
                    labelWarning.Text = "Please enter more elements to sort";   //display warning label if above conditions are not met
                    labelWarning.Visible = true;                                //fisplay warning message
                }
            }
            catch
            {
                labelWarning.Visible = true;                                    //if error, display warning message

            }

        }

        protected void outputString_TextChanged(object sender, EventArgs e)
        {

        }
        /****************************STRING SORT CODE ENDS HERE********************************************************************************/
    }
}