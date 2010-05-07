ENV['RC_ARCHS'] = '' if RUBY_PLATFORM =~ /darwin/

require 'mkmf'

dir_config('ext/shapelib')
find_library("shp","SHPGetInfo","/opt/local/lib","/usr/local/lib")
find_header("shapefil.h", "/opt/local/include","/usr/local/lib")

create_makefile('shapelib')




