#
# Cookbook:: segulja_packages
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(
<<<<<<< HEAD
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
=======
  vim-enhanced
  sysstat
  net-tools
  telnet
  bc
  mlocate
  redhat-lsb
  wget
  autofs
>>>>>>> adf4693d5e90c8b520d655a035e8d2e3c9b0f219
).each do |pkg|
  package pkg do
    action :install
  end
end
