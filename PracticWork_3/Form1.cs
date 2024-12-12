using Microsoft.VisualBasic.ApplicationServices;
using PracticWork_3.Models;

namespace PracticWork_3
{
    public partial class FormTypes : Form
    {
        public FormTypes()
        {
            InitializeComponent();
        }

        private void FormTypes_Load(object sender, EventArgs e)
        {
            using (ApplicationContext db = new ApplicationContext())
            {
                var typesOfPartner = db.TypesOfPartners.ToList();
                var typesOfProduct = db.TypesOfProducts.ToList();

                textBoxPartners.Text = String.Empty;
                foreach (TypesOfPartner type in typesOfPartner)
                {
                    textBoxPartners.Text += string.Format("{0}{1,5}", type.Id, type.TypeOfPartner) + Environment.NewLine;
                }

                textBoxProducts.Text = String.Empty;
                foreach (TypesOfProduct type in typesOfProduct)
                {
                    textBoxProducts.Text += string.Format("{0}{1,25}\t{2,5}", type.Id, type.TypeOfProduct, type.TypeCoefficent) + Environment.NewLine;
                }
            }
        }
    }
}
