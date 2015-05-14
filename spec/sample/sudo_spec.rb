require 'spec_helper'

#sudo 
describe file('/etc/sudoers') do
  it { should be_file }
  it { should contain "^tsuba-admin ALL=(ALL) NOPASSWD:ALL" }
end
