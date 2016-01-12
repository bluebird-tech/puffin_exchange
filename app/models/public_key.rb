class PublicKey < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :key, presence: true

  # TODO: write activate method which sets avtive? to true and all others to false
end
