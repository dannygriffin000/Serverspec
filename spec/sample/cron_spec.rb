require 'spec_helper'

describe package('cronie') do
  it { should be_installed }
end
