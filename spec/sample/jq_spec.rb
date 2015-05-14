require 'spec_helper'

describe file('/usr/bin/jq') do
  it { should be_file }
end
