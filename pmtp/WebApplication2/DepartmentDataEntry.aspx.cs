using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class DepartmentDataEntry : System.Web.UI.Page
    {
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Dept_Name"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Dept_Phone"].DefaultValue = TextBox2.Text;
            int s = SqlDataSource2.Insert();

            if (s > 0)
            {
                Label1.Text = " Yeni Bölüm: <b>" + TextBox1.Text + "</b><p>Veriler Başarılı Şekilde Kaydedilmiştir";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Maaş Kaydı Başarısız. Verilerinizi kontrol ettikten sonra Tekrar deneyin";
            Label1.Visible = true;
        }
    }
}
      
    
