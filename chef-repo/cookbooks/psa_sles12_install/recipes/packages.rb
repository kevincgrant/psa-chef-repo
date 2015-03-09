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
end

template '/etc/vsftpd.conf' do
source 'vsftpd.conf.erb'
end

