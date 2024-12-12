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
                var typesOfPartner = db.TypesOfPartners.ToList();
                var typesOfProduct = db.TypesOfProducts.ToList();

                textBoxPartners.Text = string.Format("{0,-3}{1,-5}", "Id", "Types") + Environment.NewLine;
                foreach (TypesOfPartner type in typesOfPartner)
                {
                    textBoxPartners.Text += string.Format("{0,-3}{1,-5}", type.Id, type.TypeOfPartner) + Environment.NewLine;
                }

                textBoxProducts.Text = String.Format("{0,-3}{1,-25}{2,-5}", "Id", "Types", "Coefficent") + Environment.NewLine; ;
                foreach (TypesOfProduct type in typesOfProduct)
                {
                    textBoxProducts.Text += string.Format("{0,-3}{1,-25}{2,-5}", type.Id, type.TypeOfProduct, type.TypeCoefficent) + Environment.NewLine;
                }
            }
        }
    }
}
