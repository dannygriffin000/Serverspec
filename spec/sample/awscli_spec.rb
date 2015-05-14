require 'spec_helper'

describe command('aws --version') do
  its(:stdout) { should match /aws-cli/ }
end
