#
# Cookbook:: segulja_packages
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(
  redhat-lsb
  perl-Net-SSLeay
  telnet
  wget
  traceroute
  autofs
  nfs-utils
  sysstat
  mlocate
  bc
).each do |pkg|
  package pkg do
    action :install
  end
end
