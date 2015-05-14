require 'spec_helper'

describe file('/etc/passwd') do
  it { should be_file }
  its(:content) { should match(/^#{property[:adduser]}/) }
end
