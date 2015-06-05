require 'spec_helper'
describe 'scom_agent::install' do

  context 'with defaults for all parameters' do
    it { should contain_class('scom_agent::install') }
    it do
      should contain_package('scx').with(
        'ensure' => 'installed',
        'name'   => 'scx',
    ) end
  end
end
