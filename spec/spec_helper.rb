require 'serverspec'
require 'net/ssh'
require 'yaml'

#In version 2, Don't include SpecInfra::Helper::_backend_type and SpecInfra::Helper::DetectOS
#In version 2, Don't  RSpec.configure do |c| ---

#yaml load
properties = YAML.load_file('./yaml/properties.yaml')

#sudo passwordを聞かれた場合
if ENV['ASK_SUDO_PASSWORD']
  begin
    require 'highline/import'
  rescue LoadError
    fail "highline is not available. Try installing it."
  end
  set :sudo_password, ask("Enter sudo password: ") { |q| q.echo = false }
else
  set :sudo_password, ENV['SUDO_PASSWORD']
end

#TARGET_HOSTはRakefileで定義済
host = ENV['TARGET_HOST']
#specfile内で参照する
#propertiesというhost属性値を定義
set_property properties[host]

#read configuration from OpenSSH configuration files
options = Net::SSH::Config.for(host)
#~/.ssh/configからUserを取得,なければ現在のUser
options[:user] ||= Etc.getlogin

set :backend, :ssh
set :host, host
set :ssh_options, options
#NOPASSWORD sudoする場合、true
set :request_pty, true
set :path, '/sbin:/usr/sbin:/usr/local/sbin:$PATH'
