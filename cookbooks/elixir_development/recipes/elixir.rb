apt_repository 'erlang' do
  uri 'http://packages.erlang-solutions.com/debian'
  distribution node['lsb']['codename']
  components ['contrib']
  key 'http://packages.erlang-solutions.com/debian/erlang_solutions.asc'
end

%w{
esl-erlang
elixir
}.each do |name|
  package name
end
