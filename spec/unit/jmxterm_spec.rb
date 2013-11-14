require 'spec_helper'

describe 'jmxterm' do
  let(:chef_run) { ChefSpec::Runner.new(step_into: ['jmxterm_jmx_exec']).converge(described_recipe) }

  it 'uses the LWRP' do
    expect(chef_run).to run_jmxterm_jmx_exec('resource')
  end

  it 'steps into the LWRP' do
    expect(chef_run).to run_execute('resource')
    expect(chef_run).to create_directory('/opt/jmxterm')
    expect(chef_run).to create_remote_file_if_missing('/opt/jmxterm/jmxterm.jar')
  end  	
end