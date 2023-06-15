using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Libraries.Startup))]
namespace Libraries
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
