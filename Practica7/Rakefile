require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

$:.unshift File.dirname(__FILE__) + 'lib'

task :default => :test
desc "Realiza los tests con formato deseado"

task :test do
   sh "rspec spec/ppt_fraccionario.rb --format documentation"
end



desc "Test en formato html"
task :thtml do
  sh "rspec spec/ppt_fraccionario.rb -f html > index.html"
end
