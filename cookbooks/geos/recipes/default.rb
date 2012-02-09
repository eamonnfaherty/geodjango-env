include_recipe "build-essential"


version = node[:geos][:version]


remote_file "#{Chef::Config[:file_cache_path]}/geos-#{version}.tar.bz2" do
	source "http://download.osgeo.org/geos/geos-#{version}.tar.bz2"
	action :create_if_missing
end

bash "compile_geos_source" do
	cwd Chef::Config[:file_cache_path]
	code <<-EOH
		tar xjf geos-#{version}.tar.bz2
		cd geos-#{version} && ./configure
		make &&	make install
		ldconfig
	EOH
	creates "#{Chef::Config[:file_cache_path]}/geos-#{version}"
end