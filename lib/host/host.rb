require 'logger'

module VagrantArtixHost
  class Host < Vagrant.plugin('2', :host)
    def detect?(env)
      File.exist?('/etc/artix-release')
    end
  end
end
