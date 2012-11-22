require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

$:.unshift File.dirname(__FILE__) + 'lib'

task :default => :test
desc "Realiza los tests con formato deseado"

task :test do
   sh "rspec spec/ppt_matriz.rb --format documentation"
end
