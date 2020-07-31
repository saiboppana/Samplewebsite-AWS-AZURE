using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlinput_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlinput.Items[1].Selected ==true)
            {
                ddltarget.Items[1].Enabled = false;
            }

            else if (ddlinput.Items[2].Selected == true)
            {
                ddltarget.Items[2].Enabled = false;
            }
            else if (ddlinput.Items[3].Selected == true)
            {
                ddltarget.Items[3].Enabled = false;
            }
            else
            {
                ddltarget.Items[4].Enabled = false;
            }
        }

        protected void btnconvert_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                if(ddlinput.Items[1].Selected == true && ddltarget.Items[2].Selected==true )
                {
                    int num = int.Parse(txtinput.Text);
                    string Base = Convert.ToString(num, 2);
                    outputlbl.Text = Base;
                   

                }
               else  if(ddlinput.Items[1].Selected ==true && ddltarget.Items[3].Selected==true)
                {
                    int num = int.Parse(txtinput.Text);
                    String Base = Convert.ToString(num, 8);
                    outputlbl.Text = Base;

                }
               else if (ddlinput.Items[1].Selected == true && ddltarget.Items[4].Selected == true)
                {
                    int num = int.Parse(txtinput.Text);
                    String Base = Convert.ToString(num, 16);
                    outputlbl.Text = Base;

                }
                else if(ddlinput.Items[2].Selected == true && ddltarget.Items[1].Selected==true)
                {
                    int num = int.Parse(txtinput.Text);
                    int decimalValue = Convert.ToInt32(num.ToString(), 2);
                    outputlbl.Text = decimalValue.ToString();

                }
                else if(ddlinput.Items[2].Selected==true && ddltarget.Items[3].Selected==true)
                {
                    String num = txtinput.Text;
                    int octal = Convert.ToInt32(num, 2);
                    outputlbl.Text = Convert.ToString(octal,8);

                }
                else if(ddlinput.Items[2].Selected == true && ddlinput.Items[4].Selected == true )
                {
                    string HexConverted(string strBinary)
                    {
                        string strHex = Convert.ToInt32(strBinary, 2).ToString("X");
                        return strHex;
                    }
                    outputlbl.Text = Convert.ToString(HexConverted(txtinput.Text));
                }
                else if(ddlinput.Items[3].Selected == true && ddlinput.Items[1].Selected == true)
                {
                    int octnum = 0, r = 0;

                    int i = 0;

                    double decnum = 0;

                    octnum = int.Parse(txtinput.Text);

                    while (octnum != 0)

                    {

                        r = octnum % 10;

                        decnum = decnum + (r * Math.Pow(8, i++));

                        octnum = octnum / 10;

                    }

                    outputlbl.Text = decnum.ToString();

                    string newvalue = decnum.ToString();
                }
                else if(ddlinput.Items[3].Selected == true && ddlinput.Items[2].Selected == true)
                {

                }


            }
        }
    }
}