#
# Author:: S.Cavallo (<smcavallo@hotmail.com>)
# Copyright:: Copyright 2008-2020, Chef Software Inc.
# License:: Apache License, Version 2.0
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

require_relative "package"

class Chef
  class Resource
    class SnapPackage < Chef::Resource::Package
      unified_mode true

      provides :snap_package

      description "Use the snap_package resource to manage snap packages on Debian and Ubuntu platforms."
      introduced "15.0"

      property :channel, String,
        description: "The default channel. For example: stable.",
        default: "stable",
        equal_to: %w{edge beta candidate stable},
        desired_state: false
    end
  end
end
