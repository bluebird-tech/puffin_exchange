class Study < ActiveRecord::Base
  has_many :affiliations
  has_many :users, through: :affiliations

  validates :title, presence: true, length: { maximum: 50}
  validates :description, length: { maximum: 255 }

end
