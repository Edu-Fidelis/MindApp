class Content < ApplicationRecord
  belongs_to :user

  validates :title, :description, presence: true

  has_many :tag contents
  has_many :tags, throught: :tag_contents
end
