require 'spec_helper'

describe service('redis6379') do
  it { should be_enabled }
end
