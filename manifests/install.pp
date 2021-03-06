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
class scom_agent::install inherits scom_agent {

  file { '/etc/yum.repos.d/scom.repo':
    ensure => $scom_agent::params::scom_repo_file_ensure,
    source => $scom_agent::params::scom_repo_file_source,
    owner  => $scom_agent::params::scom_repo_file_owner,
    group  => $scom_agent::params::scom_repo_file_group,
    mode   => $scom_agent::params::scom_repo_file_mode,
  }

  package { $scom_agent::params::package_name:
    ensure => $scom_agent::params::package_ensure,
  }

}
