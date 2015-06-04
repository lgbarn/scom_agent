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
class scom_agent::config inherits scom_agent {

  #file { $scom_agent::params::scom_agent_cron_file:
  #  ensure => $scom_agent::params::scom_agent_cron_file_ensure,
  #  owner  => $scom_agent::params::scom_agent_cron_file_owner,
  #  group  => $scom_agent::params::scom_agent_cron_file_group,
  #  mode   => $scom_agent::params::scom_agent_cron_file_mode,
  #  source => $scom_agent::params::scom_agent_cron_file_source,
  #}
  #file { $scom_agent::params::scom_agent_conf_file:
  #  ensure => $scom_agent::params::scom_agent_conf_file_ensure,
  #  owner  => $scom_agent::params::scom_agent_conf_file_owner,
  #  group  => $scom_agent::params::scom_agent_conf_file_group,
  #  mode   => $scom_agent::params::scom_agent_conf_file_mode,
  #  source => $scom_agent::params::scom_agent_conf_file_source,
  #}

}
