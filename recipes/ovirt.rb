#
# Cookbook:: segulja_packages
# Recipe:: ovirt
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install epel-release rpm repository
# Install the ovirt-guest-agent rpm package
# Start and enable the ovirt-guest-agent service

package 'epel-release' do
  action :install
end

package 'ovirt-guest-agent' do
  action :install
end

service 'ovirt-guest-agent' do
  action [:enable, :start]
end
