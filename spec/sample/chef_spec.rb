require 'spec_helper'

describe package('chef') do
  it { should be_installed }
end

describe command('chef-client --version') do
  its(:stdout) { should match /Chef:/ }
end

describe command('chef-solo --version') do
  its(:stdout) { should match /Chef:/ }
end

describe command('chef-apply --version') do
  its(:stdout) { should match /Chef:/ }
end
