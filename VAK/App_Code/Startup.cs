using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VAK.Startup))]
namespace VAK
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
