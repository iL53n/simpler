require_relative 'view/inline'
require_relative 'view/plain'

module Simpler
  class View

    RENDER = {'text/inline' => Inline, 'text/plain' => Plain}.freeze
    VIEW_BASE_PATH = 'app/views'.freeze

    def initialize(env)
      @env = env
    end

    def render(binding)
      render = RENDER[content_type]
      render.new(@env).render(binding)
    end

    private

    def content_type
      @env['simpler.content_type']
    end
  end
end
