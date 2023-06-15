using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LABS3.Startup))]
namespace LABS3
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
