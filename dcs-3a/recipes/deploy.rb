include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  Chef::Log.warning("App: #{application}, Deploy: #{deploy}")
end
