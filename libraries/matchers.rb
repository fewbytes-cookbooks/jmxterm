if defined?(ChefSpec)
  def run_jmxterm_jmx_exec(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:jmxterm_jmx_exec, :run, resource_name)
  end
end
