using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplicationCourse.Entities;

namespace WebApplicationCourse.DbConnection
{
    public class BaseDbContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=MELIH\SQLEXPRESS;Database=Assignment4;Trusted_Connection=True");
        }
        DbSet<User> Users { get; set; }
    }
}