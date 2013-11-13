
def whyrun_supported?
  true
end


use_inline_resources

def jmxterm_install
  run_context.include_recipe "jmxterm::install" unless ::File.exists?(node['jmxterm']['dest'])
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

def jmxterm_args
  args = ["-l #{new_resource.host}:#{new_resource.port}"]
  args << "-u #{new_resource.user} -p #{new_resource.password}" if new_resource.user and new_resource.password
  args.join(" ")
end

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
		command "printf 'mbean #{new_resource.mbean}\n#{new_resource.operation} #{args}\n' | #{node['java']['java_home']['java']} -jar #{node['jmxterm']['dest']} #{jmxterm_args}"
		action :run
	end
end

