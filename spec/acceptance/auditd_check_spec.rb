require 'spec_helper_acceptance'

describe 'scom_agent class' do
  describe 'apply scom_agent module' do
    it 'should apply with no errors' do
      pp = <<-EOS
      class { 'scom_agent': }
      EOS

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
  
  describe 'scom_agent::install class' do
    describe package('audit') do
      it { should be_installed }
    end
  end
  
  describe 'scom_agent::config class' do
    describe file('/etc/audit/scom_agent.conf') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode '640' }
    end
    describe file('/etc/audit/audit.rules') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode '640' }
      its(:md5sum) { should eq '0e926ccef2304bb653b4c8a60e8cea0a' }
    end
  end
  
  describe 'scom_agent::service class' do
    describe service('scom_agent') do
      it { should be_enabled }
      it { should be_running }
    end
  end

end
