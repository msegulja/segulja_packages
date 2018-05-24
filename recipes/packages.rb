#
# Cookbook:: segulja_packages
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(
  redhat-lsb
  perl-Net-SSLeay
  wget
  traceroute
  autofs
  nfs-utils
  sysstat
  vim-enhanced
  net-tools
  telnet
  bc
  mlocate
).each do |pkg|
  package pkg do
    action :install
  end
end
