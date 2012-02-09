#
# Cookbook Name:: virtualenvwrapper
# Recipe:: default
#
# Copyright 2012, I Need a Robot.
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

execute "sudo pip install virtualenvwrapper" do
  command "sudo pip install virtualenvwrapper"
end

execute "adding-virtualenvwrapper" do
  command "if [ -f ~/.profile ]; then echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.profile; fi"
end