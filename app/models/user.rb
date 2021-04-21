class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1, maximum:20 }

    has_many :posts
    has_many :comments
end
