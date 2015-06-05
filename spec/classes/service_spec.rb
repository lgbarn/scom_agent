require 'spec_helper'
describe 'scom_agent::service' do

  context 'with defaults for all parameters' do
    it { should contain_class('scom_agent::service') }
    it do
      should contain_service('scom_agent').with(
        'ensure'     => 'running',
        'enable'     => 'true',
        'name'       => 'scx_cimd',
        'hasstatus'  => 'true',
        'hasrestart' => 'true',
    ) end
  end
end
