# tools
%w(git vim vim-scripts tmux).each do |pkg|
  package pkg
end

# setup ssh keys

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

