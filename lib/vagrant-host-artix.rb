begin
  require "vagrant"
rescue LoadError
  raise "Vagrant is required!"
end

require "host/host"

module VagrantArtixHost
  class Plugin < Vagrant.plugin("2")
    name "VagrantArtixHost"
    description <<-DESC
    Vagrant Host plugin for Artix Linux
    DESC

    host(:artixhostplugin) do
      host
    end

    # Defining Host Capabilities
    host_capability(:artixhostplugin, :nfs) do
      require_relative 'cap/nfs'
      Cap::NFS
    end
  end
end
