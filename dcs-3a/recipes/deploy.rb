include_recipe 'deploy'

directory node[:nginx][:dir] do
  owner 'root'
  group 'root'
  mode '0755'
end

directory node[:nginx][:log_dir] do
  mode 0755
  owner node[:nginx][:user]
  action :create
end

node[:deploy].each do |application, deploy|
  Chef::Log.info("App: #{application}, Deploy: #{deploy}")
end
