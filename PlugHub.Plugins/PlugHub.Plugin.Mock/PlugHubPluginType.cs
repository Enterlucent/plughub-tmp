using PlugHub.Shared;
using PlugHub.Shared.Mock;

namespace PlugHub.Plugin.Mock
{
    public class PlugHubPluginType
    {
        public required PlugHubSharedType PlugHubShared;
        public required PlugHubPluginSharedType PluginShared;

        public PlugHubPluginType()
        {
            this.PlugHubShared = new PlugHubSharedType();
            this.PluginShared = new PlugHubPluginSharedType();
        }
    }
}
