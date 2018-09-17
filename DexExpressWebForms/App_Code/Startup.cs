using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DexExpressWebForms.Startup))]
namespace DexExpressWebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
