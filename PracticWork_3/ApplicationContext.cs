using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace PracticWork_3
{
    public class ApplicationContext : DbContext
    {
        public DbSet<TypesOfPartner> TypesOfPartner { get; set; }
        public DbSet<TypesOfProduct> TypesOfProduct { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=DBforPW_2;Username=postgres;Password=1111");
        }
    }
}
