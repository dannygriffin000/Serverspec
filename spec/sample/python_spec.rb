require 'spec_helper'

describe command('pip --version') do
  its(:stdout) { should match /python/ }
end
