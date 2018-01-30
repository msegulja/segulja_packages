#
# Cookbook:: segulja_packages
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package %w(vim sysstat net-tools telnet) do
  action :install
end
