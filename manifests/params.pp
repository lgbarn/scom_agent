# == Class: scom_agent
#
# Full description of class scom_agent here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'scom_agent':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class scom_agent::params {

  $service_manage          = true
  $service_ensure          = 'running'
  $service_enable          = true
  $service_name            = 'scx_cimd'
  $service_hasstatus       = true
  $service_hasrestart      = true
  $package_name            = 'scx'
  $package_ensure          = 'installed'
  $scom_repo_file       = '/etc/yum.repos.d/scom.repo'
  $scom_repo_file_ensure = file
  $scom_repo_file_source = 'puppet:///modules/scom_agent/scom.repo'
  $scom_repo_file_owner  = 'root'
  $scom_repo_file_group  = 'root'
  $scom_repo_file_mode   = '0644'


}
