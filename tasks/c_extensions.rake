require 'rake/extensiontask'
require 'rake/extensiontesttask'

Rake::ExtensionTask.new('shapelib', $gemspec)

# Workaround for rake-compiler, which YAML-dump-loads the
# gemspec, which leads to errors since Procs can't be loaded
Rake::Task.tasks.each do |task_name|
    case task_name.to_s
    when /^native/
        task_name.prerequisites.unshift("fix_rake_compiler_gemspec_dump")
    end
end

task :fix_rake_compiler_gemspec_dump do
    %w{files extra_rdoc_files test_files}.each do |accessor|
        $gemspec.send(accessor).instance_eval { @exclude_procs = Array.new }
    end
end

