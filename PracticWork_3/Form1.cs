using Microsoft.VisualBasic.ApplicationServices;

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
                var typesOfPartner = db.TypesOfPartner.ToList();
                var typesOfProduct = db.TypesOfProduct.ToList();

                listBoxPartners.Text = String.Empty;
                foreach (TypesOfPartner type in typesOfPartner)
                {
                    listBoxPartners.Text += $"{type.Id}\t{type.TypeOfPartner}\n";
                }

                listBoxProducts.Text = String.Empty;
                foreach (TypesOfProduct type in typesOfProduct)
                {
                    listBoxProducts.Text += $"{type.Id}\t{type.TypeOfPartner}\n";
                }
            }
        }
    }
}
