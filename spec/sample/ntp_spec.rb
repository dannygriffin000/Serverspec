require 'spec_helper'

# ntp package installed
describe package('ntp') do
  it { should be_installed }
end

# ntp service
describe service('ntpd') do
  it { should be_enabled }
  it { should be_running } 
end
# ntp conf
describe file('/etc/ntp.conf') do
  it { should be_file }
  it { should contain "^server ntp.nict.jp iburst" }
  it { should contain "^server ntp1.jst.mfeed.ad.jp iburst" }
  it { should contain "^server ntp2.jst.mfeed.ad.jp iburst" }
  it { should contain "^server ntp3.jst.mfeed.ad.jp iburst" }
end
