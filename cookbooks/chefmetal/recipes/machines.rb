require 'chef_metal'
require 'chef_metal_ssh'

# with_chef_server "https://chef-server.example.org",
# :client_name => Chef::Config[:node_name],
# :signing_key_filename => Chef::Config[:client_key]

# machine 'chefmetal-db' do
  # recipe 'mysql'
  # tag 'mydb_master'
# end


{ 'chefmetal-web1' => '192.168.127.189', 
  'chefmetal-web2' => '192.168.127.190'}.each do |name, ip|

  machine name do
    recipe 'apache'
    provisioner ChefMetalSsh::SshProvisioner.new
    provisioner_options 'target_ip' => ip,
    'ssh_user' => 'iono',
    'ssh_options' => {
       'password' => 'iono'
     }
  end
end

