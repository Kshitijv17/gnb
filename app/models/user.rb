class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :name, presence: true
    validates :game, presence: true
end
