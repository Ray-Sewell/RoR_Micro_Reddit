class Comment < ApplicationRecord
    validates :user_id, presence: true
    validates :post_id, presence: true
    validates :body, presence: true, length: { minimum: 1, maximum:255 }

    belongs_to :post
    belongs_to :user
end
