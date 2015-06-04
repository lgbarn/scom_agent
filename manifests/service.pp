# == Class: scom_agent
#
# Ensures scom_agent configuration is per Jabil Standard
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
#  class { scom_agent:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# sillgen <steven_illgen@jabil.com>
#
# === Copyright
#
# Copyright 2014 Jabil, unless otherwise noted.
#
class scom_agent::service inherits scom_agent {

  if ! ($scom_agent::params::service_ensure in [ 'running', 'stopped' ]) {
    fail('service_ensure parameter must be running or stopped')
  }

  if $scom_agent::params::service_manage == true {
    service { 'scom_agent':
      ensure     => $scom_agent::params::service_ensure,
      enable     => $scom_agent::params::service_enable,
      name       => $scom_agent::params::service_name,
      hasstatus  => $scom_agent::params::service_hasstatus,
      hasrestart => $scom_agent::params::service_hasrestart,
    }
  }

}
