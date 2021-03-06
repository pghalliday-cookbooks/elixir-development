%w{
postgresql
postgresql-contrib
}.each do |name|
  package name
end

service 'postgresql' do
  supports :status => true, :restart => true, :reload => false
  action [ :enable, :start ]
end
