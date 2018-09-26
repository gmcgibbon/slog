class Route < ActiveRecord::Base
  SHARDS = %i(alpha beta)
  enum shard: SHARDS, _suffix: :shard
  belongs_to :blog

  after_initialize :assign_shard

  def on_shard
    ApplicationRecord.establish_connection(shard.to_sym)
    # Always load ActiveRecord lazy queries
    # before switching the connection back.
    yield(self).tap { |result| result.try(:load) }
  ensure
    ApplicationRecord.establish_connection
  end

  private

  def assign_shard
    self.shard ||= SHARDS.sample
  end
end
