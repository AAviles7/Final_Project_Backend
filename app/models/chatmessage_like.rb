class ChatmessageLike < ApplicationRecord
    belongs_to :user
    belongs_to :chatroom_message
end
