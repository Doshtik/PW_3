using System;
using System.Collections.Generic;

namespace PracticWork_3;

public partial class Product
{
    public int Id { get; set; }

    public int IdOfProduct { get; set; }

    public string Name { get; set; } = null!;

    public string Article { get; set; } = null!;

    public decimal MinCostForPartner { get; set; }

    public virtual ICollection<FromProductsToPartner> FromProductsToPartners { get; set; } = new List<FromProductsToPartner>();

    public virtual TypesOfProduct IdOfProductNavigation { get; set; } = null!;
}
