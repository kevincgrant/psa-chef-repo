#
# Cookbook Name:: psa_sles12_install
# Recipe:: default
#
# Copyright 2015, Catalina Marketing
#
# All rights reserved - Do Not Redistribute
#

cookbook_file '/etc/motd' do
   source 'motd'
   mode '0644'
   owner 'root'
   group 'root'
end
