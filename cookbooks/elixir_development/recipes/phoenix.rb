bash 'install_phoenix' do
  code <<-EOH
  mix local.hex
  mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
  EOH
  not_if 'mix phoenix.new -v'
end
