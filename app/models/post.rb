class Post < ApplicationRecord
    validates :user_id, presence: true
    validates :title, presence: true, length: { minimum: 1, maximum:50 }
    validates :body, presence: true, length: { minimum: 1, maximum:500 }

    belongs_to :user
    has_many :comments
end
