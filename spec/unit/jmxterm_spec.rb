require 'spec_helper'

describe 'jmxterm' do
  let(:chef_run) do
  	ChefSpec::Runner.new(step_into: ['jmxterm_jmx_exec']) do |node|
  		node.set["java"]["java_home"] = "/usr/lib/jvm/default-java"
  	end.converge(described_recipe)

  end

  it 'uses the LWRP' do
    expect(chef_run).to run_jmxterm_jmx_exec('resource')
  end

  it 'steps into the LWRP' do
    expect(chef_run).to run_execute('resource')
    expect(chef_run).to create_directory('/opt/jmxterm')
    expect(chef_run).to create_remote_file_if_missing('/opt/jmxterm/jmxterm.jar')
  end  	
end