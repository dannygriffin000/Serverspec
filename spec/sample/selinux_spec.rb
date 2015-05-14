require 'spec_helper'

# SELinux should be disabled
result = Specinfra.backend.run_command("cat /etc/redhat-release")
if result[:exit_status] == 0
  describe file('/etc/selinux/config') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 644 }
    its(:content) { should match(/^SELINUX=disabled$/) }
    its(:content) { should match(/^SELINUXTYPE=targeted$/) }
  end
end
