# test-environment

This repo contains the environment I use when spinning up VMs for testing locally.
It uses [Vagrant][] to manage the VMs and [Chef][] for handling provisioning.

I wrote up [how it all works in this blog post][post].

It configures:

* my [dotfiles][]
* tools like git, vim, tmux
* and system libaries like kernel headers, build tools and so on.

It's currently configured to use the Ubuntu Precise (32bit) Vagrant base box.

[Vagrant]: http://vagrantup.com/
[Chef]: http://opscode.com/
[post]: http://nickcharlton.net/posts/test-environments-with-vagrant-and-chef.html
[dotfiles]: http://github.com/nickcharlton/dotfiles
