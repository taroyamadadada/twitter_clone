class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favarites
  has_many :favariteds, through: :favarites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
