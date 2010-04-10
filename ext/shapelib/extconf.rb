require 'mkmf'

dir_config('shapelib')
find_library("shp","SHPGetInfo","/opt/local/lib","/usr/local/lib")
find_header("shapefil.h", "/opt/local/include")
create_makefile('shapelib')




