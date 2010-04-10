
jeweler_tasks = Jeweler::Tasks.new do |gem|
  gem.name = "donut"
  gem.summary = "its tasty shapes"
  gem.description = "Donuts are magically delicious shape files"
  gem.email = "mob@mobhack.it"
  gem.homepage = "http://github.com/opengotham/donut"
  gem.authors = ["Mob"]
  gem.files.include('lib/donut.*')
end
