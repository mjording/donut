spec = Gem::Specification.new do |s|
  s.name = "my_gem"
  s.platform = Gem::Platform::RUBY
  s.extensions = FileList["ext/**/extconf.rb"]
end


Rake::ExtensionTask.new('shapelib', )  do |ext|
     ext.name = 'shapelib'                # indicate the name of the extension.
     ext.ext_dir = 'ext/shapelib'         # search for 'hello_world' inside it.
     ext.lib_dir = 'lib/shapelib'              # put binaries into this folder.
     #ext.tmp_dir = 'tmp'                     # temporary folder used during compilation.
     ext.lib_dir = File.join('lib', 'shapelib')
     
     #ext.source_pattern = "*.{c,cpp,h}"        # monitor file changes to allow simple rebuild.
     #ext.config_options << '--with-foo'           # optional indicate which gem specification
                                             # will be used to based on.
     
end

# Workaround for rake-compiler, which YAML-dump-loads the
# gemspec, which leads to errors since Procs can't be loaded
# Rake::Task.tasks.each do |task_name|
#     case task_name.to_s
#     when /^native/
#         task_name.prerequisites.unshift("fix_rake_compiler_gemspec_dump")
#     end
# end
# task :fix_rake_compiler_gemspec_dump do
#     %w{files extra_rdoc_files test_files}.each do |accessor|
#         $gemspec.send(accessor).instance_eval { @exclude_procs = Array.new }
#     end
# end

 