# # encoding: utf-8

# Inspec test for recipe segulja_packages::ovirt

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# Is the epel-release package installed?
# Is the ovirt-guest-agent package installed?
# Is the ovirt-guest-agent service started and enabled?

if os[:platform] == 'rhel'
  describe package('epel-release') do
    it { should be_installed }
  end

  describe service('ovirt-guest-agent') do
    it { should be_enabled }
    it { should be_running }
  end
end

describe package('ovirt-guest-agent-common') do
  it { should be_installed }
end
