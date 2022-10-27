class Post < ApplicationRecord
    validates :title, length: {minimum: 5, maximum: 50}
    validates :body, length: {minimum: 10, maximum: 100}
    belongs_to :user
end
