require 'spec_helper'

describe file('/etc/sudoers') do
  it { should be_file }
  it { should contain "^#{property[:sudo]} ALL=(ALL) NOPASSWD:ALL" }
end
