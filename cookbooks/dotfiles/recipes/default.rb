# tools
%w(git vim vim-scripts tmux).each do |pkg|
  package pkg
end

# setup ssh keys
file "/home/#{node['dotfiles']['user']}/.ssh/id_rsa" do
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
  mode "0600"
  content node['dotfiles']['private_key']
  action :create
end

file "/home/#{node['dotfiles']['user']}/.ssh/id_rsa.pub" do
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
  mode "0600"
  content node['dotfiles']['public_key']
  action :create
end

# sync dotfiles
git "/home/#{node['dotfiles']['user']}/dotfiles" do
  repository "git://github.com/nickcharlton/dotfiles.git"
  reference "master"
  enable_submodules true
  user node['dotfiles']['user']
  group node['dotfiles']['group']
  action :checkout
end

# setup dotfiles

