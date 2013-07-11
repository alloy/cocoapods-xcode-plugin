desc 'Install bundled gems'
task :bundle do
  sh 'cd vendor && bundle install --path=bundle --standalone'
  FileList['vendor/bundle/ruby/*/{bin,build_info,cache,doc,specifications}'].each { |dir| rm_rf dir }
end

desc 'Remove build artifacts'
task :clean do
  rm_rf 'vendor/bundle'
  rm_rf 'vendor/.bundle'
end

desc 'Test the bundled gems work'
task :test_bundle do
  require 'rbconfig'
  ruby_bin_path = File.join(RbConfig::CONFIG["bindir"], RbConfig::CONFIG["ruby_install_name"])
  pod_wrapper_path = File.expand_path('../cocoadocs/Helpers/pod_wrapper.rb', __FILE__)
  sh %{macruby -e 'framework "Cocoa"; t = NSTask.launchedTaskWithLaunchPath("#{ruby_bin_path}", arguments:["#{pod_wrapper_path}", "--help"]); t.waitUntilExit '}
end
