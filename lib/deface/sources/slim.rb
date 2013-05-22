module Deface
  module Sources
    class Slim < Source
      def self.execute(override)
        binding.pry
        if Rails.application.config.deface.slim_support
          source = Slim::ERBConverter.new.call(source)
        else
          raise Deface::NotSupportedError, "`#{override.name}` supplies :slim source, but slim_support is not detected."
        end
      end
    end
  end
end
