module MyVagrantHostPlugin
  module Cap
    class Hello
      def self.hello_command(env)
        # Command that will say "hello" when run
       'echo "hello"'
      end
    end
  end
end
