# this recipe installs jmxterm jar in node['jmxterm']['dest']
# Please note that java will not be installed by this recipe. This is intentional

directory ::File.dirname(node['jmxterm']['dest']) do
  mode 00755
  recursive true
end

remote_file node['jmxterm']['dest'] do
    mode 00644
    source node['jmxterm']['url']
    checksum node['jmxterm']['checksum']
    action :create_if_missing
end
