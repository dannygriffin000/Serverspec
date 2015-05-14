require 'spec_helper'

# logrotate.conf
describe file('/etc/logrotate.conf') do
  it { should be_file }
  it { should contain "^daily" }
  it { should contain "^rotate 90" }
end
