#!/bin/bash
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

current_dir=$(dirname $(realpath ${BASH_SOURCE[0]}))
cli_dir=$(dirname $current_dir)
orchestrate_dir=$(dirname $cli_dir)
source $orchestrate_dir/environ.sh

echo "Building Python wheel"
(pushd $cli_dir && python setup.py bdist_wheel && popd)

echo "Done."
