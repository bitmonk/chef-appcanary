#
# Cookbook Name:: appcanary
# Recipe:: default
#
# Copyright (C) 2015 Justin Alan Ryan 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform']
when 'ubuntu', 'debian'
  include_recipe 'apt'

  apt_repository "appcanary_agent" do
    uri "https://packagecloud.io/appcanary/agent/" + node['platform']
    distribution node['lsb']['codename']
    components ["main"]
    key 'https://packagecloud.io/gpg.key'
    notifies :run, 'execute[apt-get update]', :immediately
  end
when 'redhat', 'centos', 'fedora'
  # not yet
end

package 'appcanary'
