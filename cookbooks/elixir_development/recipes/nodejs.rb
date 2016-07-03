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
