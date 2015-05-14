require 'spec_helper'

# yum epel repository 
describe yumrepo('epel') do
  it { should exist }
  it { should be_enabled }
end

# yum amazon or centos repository
result = Specinfra.backend.run_command("cat /etc/redhat-release")
if result[:exit_status] == 0
  describe yumrepo('base') do
    it { should exist }
    it { should be_enabled }
  end
  describe yumrepo('extras') do
    it { should exist }
    it { should be_enabled }
  end
  describe yumrepo('updates') do
    it { should exist }
    it { should be_enabled }
  end
else
# yum amazon repository 
  describe yumrepo('amzn-main') do
    it { should exist }
    it { should be_enabled }
  end
  describe yumrepo('amzn-updates') do
    it { should exist }
    it { should be_enabled }
  end
end
