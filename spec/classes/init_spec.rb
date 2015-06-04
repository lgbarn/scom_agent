require 'spec_helper'
describe 'scom_agent' do

  context 'with defaults for all parameters' do
    it { should contain_class('scom_agent') }
  end
end
