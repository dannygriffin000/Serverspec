require 'spec_helper'

# uchiwa package installed
describe package('uchiwa') do
  it { should be_installed }
end

# uchiwa service
describe service('uchiwa') do
  it { should be_enabled }
end
