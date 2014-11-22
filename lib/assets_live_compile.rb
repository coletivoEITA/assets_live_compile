require 'active_support/cache'

module ActiveSupport
  module Cache
    autoload :AssetsLiveCompileStore, 'active_support/cache/assets_live_compile_store'

    class Entry
      attr_accessor :original_value

      def initialize_with_original_value value, options = {}
        @original_value = value
        initialize_without_original_value value, options
      end
      alias_method_chain :initialize, :original_value

    end
  end
end
