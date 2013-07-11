desc 'Install bundled gems'
task :bundle do
  sh 'cd vendor && bundle install --path=bundle --standalone'
  FileList['vendor/bundle/ruby/*/{build_info,cache,doc,specifications}'].each { |dir| rm_rf dir }
end

desc 'Remove build artifacts'
task :clean do
  rm_rf 'vendor/bundle'
  rm_rf 'vendor/.bundle'
end
