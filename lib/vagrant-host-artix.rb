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

    host(:artixhostplugin, :linux) do
      Host
    end

    # Defining Host Capabilities
    host_capability(:artixhostplugin, 'nfs_check_command') do
      require_relative 'host/cap/nfs'
      Cap::NFS
    end

    host_capability(:artixhostplugin, 'nfs_start_command') do
      require_relative 'host/cap/nfs'
      Cap::NFS
    end
  end
end
