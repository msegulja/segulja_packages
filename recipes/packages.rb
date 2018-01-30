#
# Cookbook:: segulja_packages
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(
  vim-enhanced
  sysstat
  net-tools
  telnet
  bc
  mlocate
  redhat-lsb
).each do |pkg|
  package pkg do
    action :install
  end
end
