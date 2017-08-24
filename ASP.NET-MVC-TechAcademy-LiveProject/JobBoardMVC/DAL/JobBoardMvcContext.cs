using JobBoardMVC.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace JobBoardMVC.DAL
{
    public class JobBoardMvcContext: DbContext
    {
        public JobBoardMvcContext():base("JobBoardMvcContext")
        {

        }
        public DbSet<Job> Job { get; set; }
        public DbSet<Company> Company { get; set; }
        public DbSet<Place> Place { get; set; }
    }
}