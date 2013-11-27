#
# Cookbook Name:: mcmyadmin
# Attributes:: mcmyadmin
#
# Copyright 2013, Michael LaPera.
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

# Where the various parts of McMyAdmin are
default[:mcmyadmin][:url_download] 	= 'http://mcmyadmin.com/Downloads/'
default[:mcmyadmin][:dir]      			= '/mnt/minecraft/mcmyadmin'
default[:mcmyadmin][:log_dir]     	= '/var/log/mcmyadmin'
default[:mcmyadmin][:binary]      	= '/mnt/minecraft/mcmyadmin/mcmyadmin/MCMA2_Linux_x86_64'
default[:mcmyadmin][:init_script] 	= '/etc/init.d/mcmyadmin'
default[:apache][:pid_file] 				= '/var/run/mcmyadmin.pid'

# General settings
default[:mcmyadmin][:user]        	= 'minecraft'
default[:mcmyadmin][:group]       	= 'minecraft'
default[:mcmyadmin][:listen_ports] 	= [ '8080' ]
default[:mcmyadmin][:contact] 			= 'mcmyadmin@example.com'

# logrotate
default[:mcmyadmin][:logrotate][:schedule] = 'daily'
default[:mcmyadmin][:logrotate][:rotate] = '30'
default[:mcmyadmin][:logrotate][:delaycompress] = true
default[:mcmyadmin][:logrotate][:mode] = '640'
default[:mcmyadmin][:logrotate][:owner] = 'root'
default[:mcmyadmin][:logrotate][:group] = 'adm'
