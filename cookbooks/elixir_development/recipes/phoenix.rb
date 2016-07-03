login_user = node['elixir_development']['user']
login_home = node['elixir_development']['home']

bash 'install_phoenix' do
  code <<-EOH
  export HOME=#{login_home}
  yes | mix local.hex
  yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
  EOH
  user login_user
  not_if "su - #{login_user} -c 'mix phoenix.new -v'"
end

%w{
apt-transport-https
build-essential
}.each do |name|
  package name
end

apt_repository 'nodejs' do
  uri 'https://deb.nodesource.com/node_6.x'
  distribution node['lsb']['codename']
  components ['main']
  key 'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
  deb_src true
end

package 'nodejs'
