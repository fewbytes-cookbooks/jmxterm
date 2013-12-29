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

	# Chef::Log.info("Simple Test #{new_resource.name}")
	execute new_resource.name do
		command "printf 'mbean #{new_resource.mbean}\n#{new_resource.operation} #{args}\n' | #{node['java']['java_home']['java']} -jar #{node['jmxterm']['dest']} -l #{new_resource.host}:#{new_resource.port}"
		action :run
	end
end
