require 'spec_helper'

# python pip
describe command('pip --version') do
  its(:stdout) { should match /python/ }
end
