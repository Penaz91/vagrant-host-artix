# vagrant-host-plugin-ruby-template

This repo is a template for building a Ruby Vagrant host plugin. Follow the steps to setup your own host plugin!

1. Copy this repo. Its a template so follow the Github instructions to [create a repo from a template using the UI](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template), or use the github cli.
```
$ gh repo create vagrant-host-myspecialhost --template hashicorp/vagrant-host-plugin-ruby-template --public
```

#### Update the gemspec
2. Update the gemspec. Choose a good, descriptive name for your project. Rename `my-vagrant-host-plugin-ruby-template.gemspec` to reflect this, and fill out the required information.

3. Rename all the references of `my-vagrant-host-plugin-ruby-template.gemspec` to your new name.

#### Update the module
4. Rename `vagrant-host.rb` to match the name of your plugin and update the contents of the file. This includes updating the module name `MyVagrantHostPlugin`, the name and description fields and the ` host(:myhostplugin) do` line.

5. Rename all the references of `MyVagrantHostPlugin` to your new name.

6. Update the host detection method in `lib/host/host.rb`. This method will be run by Vagrant to determine if the host is running the OS assumed by the plugin.

#### Add capabilities
7. Add any new capabilities the plugin needs to the `host/cap` module. Be sure to register the capabilities. 

#### Build and install your gem
8. Commit all your changes if you haven't already. 
```
$ git add -A
$ git commit -m "My Vagrant host plugin"
```

9. Build your plugin
```
$ gem build my-vagrant-host-plugin-ruby-template.gemspec 
  Successfully built RubyGem
  Name: my-vagrant-host-plugin
  Version: 0.0.1
  File: my-vagrant-host-plugin-0.0.1.gem
```

10. (optional) Push your gem to [RubyGems](https://rubygems.org/)
```
$ gem push my-vagrant-host-plugin-0.0.1.gem
```

11. Install your plugin
```
# Install from the locally built gem
$ vagrant plugin install my-vagrant-host-plugin-0.0.1.gem

# If you pushed the gem to RubyGems, install from RubyGems
$ vagrant plugin install my-vagrant-host-plugin
```
