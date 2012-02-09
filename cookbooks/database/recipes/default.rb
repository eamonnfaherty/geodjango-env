dbuser = node[:database][:dbuser]
dbname = node[:database][:dbname]
dbpassword = node[:database][:dbname]

postgresql_user dbuser do
  password dbpassword
  privileges :superuser => false, :createdb => false, :inherit => true, :login => true
end

postgresql_database dbname do
  owner dbuser
  template "template_postgis"
  flags :datconnlimit => 5
  modules [ "postgis" ]
end
