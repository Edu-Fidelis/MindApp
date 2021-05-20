class Tag < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: :user_id } 

  has_many :tag_contents, dependent: :destroy
  has_many :contents, throught: : tag_contents
end
