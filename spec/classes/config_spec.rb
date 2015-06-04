require 'spec_helper'
describe 'scom_agent::config' do

  context 'with defaults for all parameters' do
    it { should contain_class('scom_agent::config') }
    it do
      should contain_file('/etc/audit/scom_agent.conf').with(
        'ensure' => 'file',
        'source' => 'puppet:///modules/scom_agent/scom_agent.conf',
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0640',
    ) end
    it do
      should contain_file('/etc/audit/audit.rules').with(
        'ensure' => 'file',
        'source' => 'puppet:///modules/scom_agent/audit.rules',
        'owner' => 'root',
        'group' => 'root',
        'mode' => '0640',
    ) end
  end
end
