#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
require 'awesome_print'
pool_members = search(:node, 'roles:*')

template "/etc/motd" do
  source "motd.erb"
  mode "0644"
  variables(:pool => pool_members)
end

