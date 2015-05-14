#require 'spec_helper'

describe package('rabbitmq-server') do
  it { should be_installed }
end

describe service('rabbitmq-server') do
  it { should be_enabled }
end

describe command('rabbitmqctl list_users') do
  its(:stdout) { should match /sensu/ }
end

describe command('rabbitmqctl list_vhosts') do
  its(:stdout) { should match /sensu/ }
end
