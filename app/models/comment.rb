class Comment < ApplicationRecord
  belongs_to :user
  validates :commenter, presence: true
  validates :aunty, presence: true
end
