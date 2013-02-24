require "fileutils"

def alias_task(new, old)
  task new, Rake::Task[old].arg_names => old
end

task :server do
  system "bundle exec middleman server"
end

alias_task :s, :server

desc "Build static assets"
task :build do
  system "bundle exec middleman build -c"
end

desc "Build and deploy to S3"
task :deploy do
  ENV["MM_ENV"] = "production"
  Rake::Task["build"].invoke
  system "cap deploy"
end
