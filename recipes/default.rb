#
# Author:: Joshua Timberman
# Copyright:: Copyright (c) 2015, Joshua Timberman
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

package 'default-jre'

['48x48', '64x64'].each do |res|
  directory "/usr/share/icons/hicolor/#{res}/apps" do
    recursive true
  end

  cookbook_file "/usr/share/icons/hicolor/#{res}/apps/minecraft.png" do
    source "minecraft-#{res}.png"
    mode '0644'
  end
end

cookbook_file '/usr/share/applications/minecraft.desktop' do
  source 'minecraft.desktop'
  mode '0644'
end

directory '/usr/share/minecraft' do
  mode '0755'
  recursive true
end

remote_file '/usr/share/minecraft/minecraft.jar' do
  source 'https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar'
  mode '0755'
end
