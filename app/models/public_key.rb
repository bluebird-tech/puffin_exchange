class PublicKey < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :key, presence: true

  def activate
    self.update(active?: true)
    PublicKey.where("user_id = ? AND id != ? AND active?",
                      self.user_id, self.id, true).update_all(active?: false)
  end

end
