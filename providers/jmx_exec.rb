
def whyrun_supported?
  true
end


use_inline_resources

def jmxterm_install
	directory :File.dirname(node['jmxterm']['dest']) do
		mode 00755
		recursive true
	end

	remote_file node['jmxterm']['dest'] do
 		owner "tomcat6"
  		group "tomcat6"
  		mode 00644
  		source node['jmxterm']['url']
  		checksum node['jmxterm']['checksum']
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

	args = case new_resource.arguments
	when Array
		new_resource.arguments.join(" ")
	else
		new_resource.arguments
	end

	#Chef::Log.info("Simple Test #{new_resource.name}")
	execute "#{new_resource.name}" do
		command "printf 'mbean #{new_resource.mbean}\n#{new_resource.operation} #{args}\n' | #{node['java']['java_home']['java']} -jar #{node['jmxterm']['dest']} -l #{new_resource.host}:#{new_resource.port}"
		action :run
	end
end

