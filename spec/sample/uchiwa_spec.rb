require 'spec_helper'

describe package('uchiwa') do
  it { should be_installed }
end

describe service('uchiwa') do
  it { should be_enabled }
end
