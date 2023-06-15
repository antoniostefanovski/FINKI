using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AlbumMVC.Startup))]
namespace AlbumMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
