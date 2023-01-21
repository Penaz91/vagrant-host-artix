require "vagrant/util/which"
require "vagrant/util/subprocess"

module VagrantArtixHost
  module Util
    class Platform
      class << self
      # OpenRC is in use
      def openrc?
        if !defined?(@_openrc)
          if Util::Which.which("rc-update")
            @_openrc = true
          else
            @_openrc = false
          end
        end
        @_openrc
      end
      # Runit is in use
      def runit?
        if !defined?(@_runit)
          result = Vagrant::Util::Subprocess.execute("ps", "-o", "comm=", "1")
          @_runit = result.stdout.chomp == "runit-init"
        else
          @_runit = false
        end
        @_runit
      end

      # S6 is in use
      def s6?
        if !defined?(@_s6)
          result = Vagrant::Util::Subprocess.execute("ps", "-o", "comm=", "1")
          @_s6 = result.stdout.chomp == "s6-svscan"
        else
          @_s6 = false
        end
        @_s6
      end

      # dinit is in use
      def dinit?
        if !defined?(@_dinit)
          if Util::Which.which("dinitctl")
            @_dinit = true
          else
            @_dinit = false
          end
        end
        @_dinit
      end

    end
  end
end
