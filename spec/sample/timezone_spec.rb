require 'spec_helper'

# timezone
describe command('date') do
  its(:stdout) { should match /JST/ }
end
