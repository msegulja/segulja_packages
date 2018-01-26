#
# Cookbook:: segulja_packages
# Recipe:: ovirt
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Install epel-release rpm repository
# Install the ovirt-guest-agent rpm package
# Start and enable the ovirt-guest-agent service

if node['platform'] == 'centos'
  package 'epel-release' do
    action :install
  end

  package 'ovirt-guest-agent' do
    action :install
  end
end

if node['platform'] == 'oracle'
  cookbook_file '/tmp/ovirt-guest-agent-1.0.13-1.el6.noarch.rpm' do
    source 'ovirt-guest-agent-1.0.13-1.el6.noarch.rpm'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end

  package 'ovirt-guest-agent' do
    action :install
    source '/tmp/ovirt-guest-agent-1.0.13-1.el6.noarch.rpm'
  end
end

service 'ovirt-guest-agent' do
  action [:enable, :start]
end
