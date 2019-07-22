#
# Cookbook:: sysbench
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

execute "prepare package" do
  command "curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.rpm.sh | sudo bash"
end

package ["sysbench", "mysql"] do
  action :install
end
