$LOAD_PATH.unshift File.expand_path("../ext/shapelib", __FILE__)

jeweler_tasks = Jeweler::Tasks.new do |gem|
  gem.name = "donut"
  gem.summary = "its tasty shapes"
  gem.description = "Donuts are magically delicious shape files"
  gem.email = "mob@mobhack.it"
  gem.homepage = "http://github.com/opengotham/donut"
  gem.authors = ["Mob"]
  gem.files.include('lib/shapelib')
  gem.extensions = FileList["ext/shapelib/extconf.rb"]
end


Rake::ExtensionTask.new('shapelib')  do |ext|
  
     ext.name = 'shapelib'                
     ext.ext_dir = 'ext/shapelib'         
     ext.lib_dir = 'lib/shapelib'         
     ext.ext_dir = 'ext/shapelib'     
     ext.lib_dir = 'lib/shapelib'
end