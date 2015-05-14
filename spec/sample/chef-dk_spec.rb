require 'spec_helper'

# git
describe package('chefdk') do
  it { should be_installed }
end
