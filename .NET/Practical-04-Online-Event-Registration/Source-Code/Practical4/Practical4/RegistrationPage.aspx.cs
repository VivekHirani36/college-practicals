using System;
using System.Web.UI;

namespace EventRegistration
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Gender validation
        protected void vGender_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = male.Checked || female.Checked;
        }

        // Skills validation
        protected void vSkills_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = cs.Checked || py.Checked || ai.Checked;
        }

        // Terms and Conditions validation
        protected void vTerms_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = terms.Checked;
        }

        // Register button
        protected void submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Write(
                    "<script>alert('Registration Successful!');</script>"
                );
            }
        }
    }
}