require 'spec_helper'

describe yumrepo('epel') do
  it { should exist }
  it { should be_enabled }
end

result = Specinfra.backend.run_command('cat /etc/redhat-release')
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
  describe yumrepo('amzn-main') do
    it { should exist }
    it { should be_enabled }
  end
  describe yumrepo('amzn-updates') do
    it { should exist }
    it { should be_enabled }
  end
end
