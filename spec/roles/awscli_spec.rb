require 'spec_helper'

# awscli
describe command('aws --version') do
  its(:stdout) { should match /aws-cli/ }
end
