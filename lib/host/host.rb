require 'logger'

module MyVagrantHostPlugin
  class Host < Vagrant.plugin("2", :host)
    def detect?(env)
      # TODO: run a command on the host to determine if it is running
      # the OS expected by this plugin. If it is, return true, otherwise
      # return false and Vagrant will try with another host plugin.
      return false
    end
  end
end
