require 'spec_helper'

describe command('echo N | yum update') do
  its(:stdout) { should match /no packages marked for update/i }
end
