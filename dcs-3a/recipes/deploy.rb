include_recipe 'deploy'

node[:deploy].each do |application, deploy|
  Chef::Log.info("App: #{application}, Deploy: #{deploy}")
end
