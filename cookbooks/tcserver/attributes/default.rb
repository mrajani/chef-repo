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
default['tcserver']['rpm_filename'] = 'vfabric-tc-server-standard-2.9.5-SR1.noarch.rpm'
default['tcserver']['rpm_url'] = "http://repo.vmware.com/pub/rhel6/vfabric/5.3/x86_64/#{ node['tcserver']['rpm_filename'] }"
default['tcserver']['rpm_sum'] = '2f2e898bf9db2673344bb6ab8e3ce5ba17ac1d778dc5d97f761114dbbf0b04ff'

default['java']['groovy_zip'] =  'groovy-binary-2.4.0.zip'
default['java']['groovy_url'] =  'http://dl.bintray.com/groovy/maven/groovy-binary-2.4.0.zip'
default['java']['groovy_sum'] =  '69a01bcce68295b185036c61d5a7dde27078ab1c3f7da488e9c1ef9ad0ca60f1'
default['java']['groovy_ver'] =  'groovy-2.4.0'
