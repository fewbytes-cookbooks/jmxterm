

def whyrun_supported?
  true
end


use_inline_resources

def jmxterm_install
	remote_file node['jmxtools']['jmxterm']['dest'] do
 		owner "tomcat6"
  		group "tomcat6"
  		mode 00644
  		source node['jmxtools']['jmxterm']['provider']['site']
  		action :create_if_missing
	end
end

# def jmxterm_check(location)
# 	Chef::Log.info("Simple ")
# 	#
# end

# def jmxterm_run
# 	jmxterm_check
# end

# def authentication_enabled?
# 	new_resource.user && new_resource.password
# end

action :run do
	jmxterm_install
	#Chef::Log.info("Simple Test #{new_resource.name}")
	execute "#{new_resource.name}" do
		command "echo #{new_resource.command} | #{node['java']['java_home']['java']} -jar #{node['jmxterm']['dest']} -l #{new_resource.host}:#{new_resource.port}"
		action :run
	end
end

