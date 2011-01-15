#
# Cookbook Name:: alfresco
# attributes:: default
#
# Author:: Fletcher Nichol (<fnichol@nichol.ca>)
#
# Copyright:: 2011, Fletcher Nichol
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

case node.platform
when "debian","ubuntu"
  node[:java][:install_flavor] = "sun"
else
  node[:java][:install_flavor] = "openjdk"
end

default[:alfresco][:version] = "3.4.c"
default[:alfresco][:zip_sha256] = "90c9181e35e167d89aa212b668d504d2"

default[:alfresco][:db][:user]      = "alfresco"
default[:alfresco][:db][:password]  = "alfresco"
default[:alfresco][:db][:database]  = "alfresco"
