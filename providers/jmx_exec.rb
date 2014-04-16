def whyrun_supported?
  true
end

use_inline_resources

def jmxterm_install
	run_context.include_recipe "jmxterm::install"
end

action :run do
	jmxterm_install

	args = case new_resource.arguments
	when Array
		new_resource.arguments.join(' ')
	else
		new_resource.arguments
	end

	auth_opts = if new_resource.user and new_resource.password
		"-u #{new_resource.user} -p #{new_resource.password}"
	else
		""
	end
	# Chef::Log.info("Simple Test #{new_resource.name}")
	execute new_resource.name do
		command "printf 'bean #{new_resource.mbean}\nrun #{new_resource.operation} #{args}\n' | #{node['java']['java_home']['java']} -jar #{node['jmxterm']['dest']} -l #{new_resource.host}:#{new_resource.port} -n -e #{auth_opts}"
		action :run
	end
end
