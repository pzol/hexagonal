module Hexagonal
  class UserPostsOrder
    def self.new_with_logging(deps=Dependencies.new)
      LoggerProxy.new(self.new(deps), deps.logger)
    end

    # AOP style logging for the use case, override only methods which need logging
    class LoggerProxy < DelegateClass(UserPostsOrder)
      def initialize(target, logger)
        @logger = logger
        super(target)
      end

      def post
        puts "proxy"
        @logger.info("Success")
        super
      end
    end
  end
end
