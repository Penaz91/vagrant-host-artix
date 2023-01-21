require 'util/platform'

module VagrantArtixHost
  module Cap
    class NFS
      def self.nfs_check_command(_env)
        if VagrantArtixHost::Util::Platform.openrc?
          '/etc/init.d/nfs status'
        elsif VagrantArtixHost::Util::Platform.runit?
          # NOTE: Runit may be monitoring another directory instead of the default /service/
          'sv status /service/nfs'
        elsif VagrantArtixHost::Util::Platform.s6?
          's6-svstat /run/service/nfs'
        elsif VagrantArtixHost::Util::Platform.dinit?
          'dinitctl status nfs'
        else
          # Fallback to init.d
          '/etc/init.d/nfs status'
        end
      end

      def self.nfs_start_command(_env)
        if VagrantArtixHost::Util::Platform.openrc?
          '/etc/init.d/nfs restart'
        elsif VagrantArtixHost::Util::Platform.runit?
          # NOTE: Runit may be monitoring another directory instead of the default /service/
          'sv status /service/nfs'
        elsif VagrantArtixHost::Util::Platform.s6?
          's6-rc -u change nfs'
        elsif VagrantArtixHost::Util::Platform.dinit?
          'dinitctl start nfs'
        else
          # Fallback to init.d
          '/etc/init.d/nfs restart'
        end
      end
    end
  end
end
