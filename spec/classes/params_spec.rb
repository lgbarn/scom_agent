require 'spec_helper'
describe 'scom_agent::params' do

  context 'with defaults for all parameters' do
    it { should contain_class('scom_agent::params') }
  end
end
