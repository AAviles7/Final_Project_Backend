class DirectMessage < ApplicationRecord
    belongs_to :conversation
    belongs_to :user
    has_many :directmessage_likes

    validates :body, presence: true
end
