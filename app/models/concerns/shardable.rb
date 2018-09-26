module Shardable
  extend ActiveSupport::Concern

  included do
    delegate :sharded?, to: :class
  end

  class_methods do
    def sharded?
      !! @shard_id
    end

    def sharded_by(shard_id = :shard_id)
      @shard_id = by
    end
  end
end
