require 'spec_helper'

# cronie package installed
describe package('cronie') do
  it { should be_installed }
end
