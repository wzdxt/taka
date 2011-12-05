# -*- ruby -*-

LIB_DIR = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$LOAD_PATH << LIB_DIR

require 'rubygems'
require 'rake'
require 'taka'

desc "Cleaning..."
task :clean do
    sh "rm *.gem || true"
end


desc "Building..."
task :build => [ :clean ] do
    sh "gem build taka.gemspec"
end


desc "Installing..."
task :install  => [ :build ] do
    sh "gem install taka-#{Taka::VERSION}.gem"
end


# desc "Pushing to Gemcutter"
# task :publish => [ :build ] do
    # sh "gem push taka-#{Taka::VERSION}.gem"
# end


namespace :test do
    # desc "run jquery tests"
    # task :jquery => 'vendor/jquery/jquery/dist/jquery.js' do
        # require 'test/jquery/test_jquery'
    # end

    desc "run dom tests"
    task :dom do
        Dir.glob('test/dom/**/*.rb').each do |file|
            require file
        end
    end
end

# vim: syntax=Ruby
