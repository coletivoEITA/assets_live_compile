require 'sprockets/cache/file_store'

module Sprockets
  class Cache
    class AssetsLiveCompileStore

      def initialize options = {}
        @root = "#{::Rails.root}/public/assets"
      end

      def get key
        # no-op, maybe warn to serve it statically
      end

      def set key, attributes
        return unless attributes.is_a? Hash and (logical_path = attributes[:logical_path]).present?
        return if logical_path.index '.self.' and !::Rails.application.config.assets.debug
        asset = Sprockets::Asset.new nil, attributes
        path = File.join @root, asset.digest_path.strip
        FileUtils.mkdir_p File.dirname(path)
        File.open(path, 'wb'){ |f| f.write asset.source }
      end

    end
  end
end
