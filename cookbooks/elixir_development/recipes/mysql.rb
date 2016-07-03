%w{
mysql-server
}.each do |name|
  package name
end

service 'mysql' do
  supports :status => true, :restart => true, :reload => false
  action [ :enable, :start ]
end
