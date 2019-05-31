module Simpler
  class View
    class Plain
      def initialize(env)
        @env = env
      end

      def render(_binding)
        "#{@env['simpler.template'][:plain]}\n"
      end
    end
  end
end