#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/var/run/motd" do
  source "motd.erb"
  mode "0644"
end

