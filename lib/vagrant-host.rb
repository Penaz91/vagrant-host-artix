begin
  require "vagrant"
rescue LoadError
  raise "Vagrant is required!"
end

require "host/host"

# TODO: rename `MyVagrantHostPlugin` to something more relevant
module MyVagrantHostPlugin
  class Plugin < Vagrant.plugin("2")
    # TODO: rename name and description
    name "MyVagrantHostPlugin"
    description <<-DESC
    This is my host plugin.
    DESC

    # TODO: rename :myhostplugin to something more relevant.
    # You can also define this plugin as a child of an existing
    # host plugin here. A child plugin will inherit all of the 
    # capabilities of the parent. To do that add the parent 
    # as an argument to `host`. For example `host(:myhostplugin, :linux)`
    # sets the parent plugin to be the linux host plugin. 
    host(:myhostplugin) do
      host
    end

    # TODO: define host capabilities. The first argument should 
    # be the name of the plugin from above. The second argument 
    # should be the name of the host capability
    # For example:
    host_capability(:myhostplugin, :hello) do
      require_relative 'cap/hello'
      Cap::Hello
    end
  end
end
