require 'spec_helper'

# jq installed
describe file('/usr/bin/jq') do
  it { should be_file }
end
