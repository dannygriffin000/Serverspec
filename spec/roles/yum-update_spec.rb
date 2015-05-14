require 'spec_helper'

# yum update 
describe command('echo N | yum update') do
  its(:stdout) { should match /no packages marked for update/i }
end
