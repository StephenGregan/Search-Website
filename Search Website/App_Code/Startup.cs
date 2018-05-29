using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Search_Website.Startup))]
namespace Search_Website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
