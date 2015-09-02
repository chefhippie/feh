#
# Cookbook Name:: feh
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

default["feh"]["packages"] = %w(
  feh
)

default["feh"]["zypper"]["enabled"] = true
default["feh"]["zypper"]["alias"] = "x11-utilities"
default["feh"]["zypper"]["title"] = "X11 Utilities"
default["feh"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/X11:/Utilities/openSUSE_#{node["platform_version"].to_i.to_s == node["platform_version"] ? "Factory" : node["platform_version"]}/"
default["feh"]["zypper"]["key"] = "#{node["feh"]["zypper"]["repo"]}repodata/repomd.xml.key"
