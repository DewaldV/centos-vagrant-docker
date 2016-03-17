require 'spec_helper'

describe package('docker-engine') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end

describe kernel_module('overlay') do
  it { should be_loaded }
end

describe user('vagrant') do
  it { should exist }
  it { should belong_to_group 'docker' }
end

describe command('docker info') do
  its(:stdout) { should match /Storage Driver: overlay/ }
end
