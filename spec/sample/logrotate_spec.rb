require 'spec_helper'

describe file('/etc/logrotate.conf') do
  it { should be_file }
  it { should contain "^#{property[:logrotate]}" }
  it { should contain "^rotate #{property[:logkeep]}" }
end
