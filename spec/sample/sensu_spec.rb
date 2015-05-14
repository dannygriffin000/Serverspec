require 'spec_helper'

# sensu package installed
describe package('sensu') do
  it { should be_installed }
end

# sensu service
%w{ sensu-server sensu-api }.each do |sensu|
  describe service( sensu ) do
    it { should be_enabled }
  end
end
