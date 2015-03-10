#
# Cookbook Name:: psa_sles12_install
# Recipe:: default
#
# Copyright 2015, Catalina Marketing
#
# All rights reserved - Do Not Redistribute
#

package 'ntp'
package 'sysstat'
package 'vsftpd'
package 'dhcp-server'

template '/etc/ntp.conf' do
   source 'ntp.conf.erb'
   mode '0640'
   owner 'root'
   group 'ntp'
end

cookbook_file '/etc/vsftpd.conf' do
   source 'vsftpd.conf'
   mode '0600'
   owner 'root'
   group 'root'
end

