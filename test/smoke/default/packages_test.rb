# # encoding: utf-8

# Inspec test for recipe segulja_packages::packages

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('sysstat') do
  it { should be_installed }
end

describe package('mlocate') do
  it { should be_installed }
end

describe package('bc') do
  it { shoud be_installed }
end

describe package('redhat-lsb') do
  it { should be_installed }
end

describe package('perl-net-ssleay') do
  it { should be_installed }
end

describe package('telnet') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('traceroute') do
  it { should be_installed }
end

describe package ('autofs') do
  it { should be_installed }
end

describe package('nfs-utils') do
  it { should be_installed }
end

describe package('osad') do
  it { should be_installed }
end
