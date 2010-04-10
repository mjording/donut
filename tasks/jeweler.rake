begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "donut"
    gemspec.summary = "its tasty shapes"
    gemspec.description = "Donuts are magically delicious shape files"
    gemspec.email = "mob@mobhack.it"
    gemspec.homepage = "http://github.com/opengotham/donut"
    gemspec.authors = ["Mob"]
    gemspec.extensions = ["ext/shapelib/extconf.rb"]
    gem.files.include('lib/joker_native.*')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
