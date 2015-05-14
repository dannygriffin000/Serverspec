#require 'spec_helper'

# redis service
describe service('redis6379') do
  it { should be_enabled }
end
