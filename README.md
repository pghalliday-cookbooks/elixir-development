# elixir-development

Copy and edit attributes.json

```
cp attributes.example.json attributes.json
```

Get SSH keys from the host and install Chef

```
./get-ssh-keys.sh [username]@[host]
./install-chef.sh
```

Run the chef-client

```
chef-client -c client.rb
```
