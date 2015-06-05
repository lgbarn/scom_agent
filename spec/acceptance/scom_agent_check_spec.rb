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
    describe package('scx') do
      it { should be_installed }
    end
  end
  
  describe 'scom_agent::config class' do
    describe file('/etc/yum.repos.d/scom.repo') do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      it { should be_mode '644' }
      its(:md5sum) { should eq '8ce3f58193960b6939bf36df44d7cf8e' }
    end
  end
  
  describe 'scom_agent::service class' do
    describe service('scx-cimd') do
      it { should be_enabled }
      it { should be_running }
    end
  end

end
