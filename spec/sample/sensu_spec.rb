require 'spec_helper'

describe package('sensu') do
  it { should be_installed }
end

%w{ sensu-server sensu-api }.each do |sensu|
  describe service( sensu ) do
    it { should be_enabled }
  end
end
