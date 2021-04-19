class ChatroomMessage < ApplicationRecord
    belongs_to :user
    belongs_to :chatroom
    has_many :chatmessage_likes
end
