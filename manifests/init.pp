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

class scom_agent (
  $service_manage             = $scom_agent::params::service_manage,
  $service_ensure             = $scom_agent::params::service_ensure,
  $service_enable             = $scom_agent::params::service_enable,
  $service_name               = $scom_agent::params::service_name,
  $service_hasstatus          = $scom_agent::params::service_hasstatus,
  $service_hasrestart         = $scom_agent::params::service_hasrestart,
  $package_name               = $scom_agent::params::package_name,
  $package_ensure             = $scom_agent::params::package_ensure,

) inherits scom_agent::params {

  contain scom_agent::install
  contain scom_agent::config

  Class['scom_agent::install'] ->
  Class['scom_agent::config']
}
