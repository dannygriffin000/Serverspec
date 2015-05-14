require 'spec_helper'

# git
describe package('git') do
  it { should be_installed }
end
