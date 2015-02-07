#
# Cookbook Name:: tcserver
# Recipe:: default
#
# Copyright 2015, Iono Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

remote_file "#{Chef::Config[:file_cache_path]}/#{node['tcserver']['rpm_filename']}" do
  owner 'root'
  group 'root'
  mode '0644'
  source node['tcserver']['rpm_url']
  checksum node['tcserver']['rpm_sum']
end

rpm_package node['tcserver']['rpm_filename'] do
  source "#{Chef::Config[:file_cache_path]}/#{ node['tcserver']['rpm_filename'] }"
end

remote_file "#{Chef::Config[:file_cache_path]}/#{node['java']['groovy_zip']}" do
  owner 'root'
  group 'root'
  mode '0644'
  source node['java']['groovy_url']
  checksum node['java']['groovy_sum']
end

package 'unzip' do
  action :install
end


bash 'extract_groovy' do
  cwd '/opt/'
  code <<-EOH
    unzip -qq -fo #{Chef::Config[:file_cache_path]}/#{node['java']['groovy_zip']}
  EOH
  not_if { ::File.exists?('/opt/groovy') }
end

include_recipe 'tcserver::default_symlink'

#bash "unpack java" do
   #code <<-EOS
   #tar xzf #{Chef::Config[:file_cache_path]/jdk-7.2.tar.gz} --strip-components=1 -C /usr/local/jdk-7.2
   #EOS
#end

