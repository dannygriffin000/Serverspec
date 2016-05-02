require 'rake'
require 'rspec/core/rake_task'
require 'yaml'

#yamlのload
properties = YAML.load_file('./yaml/properties.yaml')

#taskのdescriptionを定義
desc "Run serverspec to all hosts"
#host未指定の時のtaskを定義
task :serverspec => 'serverspec:all'

#host指定の場合、task :serverspecをhostごとに実施するため,名前空間を定義
namespace :serverspec do
  #:allのときはkey.split('.')[0]=全hostで実行
  task :all => properties.keys.map {|key| 'serverspec:' + key.split('.')[0] }
  #key=hostごと実行
  properties.keys.each do |key|
    desc "Run serverspec to #{key}"
    RSpec::Core::RakeTask.new(key.split('.')[0].to_sym) do |t|
      ENV['TARGET_HOST'] = key
      #roles名とディレクトリ名を合わせておき,指定
      t.pattern = 'spec/{' + properties[key][:roles].join(',') + '}/*_spec.rb'
    end
  end
end
