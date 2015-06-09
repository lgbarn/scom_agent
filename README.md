# scom_agent

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with scom_agent](#setup)
    * [What scom_agent affects](#what-scom_agent-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with scom_agent](#beginning-with-scom_agent)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module will install SCOM Agent to server with or without Spacewalk installed.
This module makes use of a private repo created on Spacewalk server.
Compatible with RedHat 6 and Puppet 3.7

## Module Description

This module add a file called scom.repo in the /etc/yum.repos.d directory. 
This file allows server to find RPM so it can be installed and configured.

## Setup

### What scom_agent affects

* /etc/yum.repos.d/scom.repo

### Beginning with scom_agent

Install module with `sudo puppet module scom_agent` or use r10k.

## Usage

`include scom_agent`

## Reference

### Classes

#### Public Classes
- [`scom_agent`](#scom_agent): Installs and configures scom on your server.

#### Private Classes
* [`scom_agent::config`](#scom_agentconfig): Configures the module.
* [`scom_agent::install`](#scom_agentinstall): Installs scom_agent package on your server.
* [`scom_agent::params`](#scom_agentparams): Sets parameters for module.
* [`scom_agent::service`](#scom_agentservice): Configures scom_agent service.

## Limitations

This module has only been tested on RedHat,CentOS and it derivatives.
All other distributions are not supported.

## Development

This module is public and can be found on github [here](https://github.com/lgbarn/scom_agent)

