require 'spec_helper'

#adduser
describe file('/etc/passwd') do
  it { should be_file }
  its(:content) { should match(/^tsuba-admin/) }
end
