#require 'spec_helper'

# rabbitmq package installed
describe package('rabbitmq-server') do
  it { should be_installed }
end

# rabbitmq service
describe service('rabbitmq-server') do
  it { should be_enabled }
end

# rabbit config
describe command('rabbitmqctl list_users') do
  its(:stdout) { should match /sensu/ }
end

describe command('rabbitmqctl list_vhosts') do
  its(:stdout) { should match /sensu/ }
end
