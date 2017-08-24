using JobBoardMVC.DAL;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JobBoardMVC.Startup))]
namespace JobBoardMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            JobBoardMvcContext context = new JobBoardMvcContext();
            SeedData.InitializeDb(context);
        }
    }
}
