class Chatroom < ApplicationRecord
    belongs_to :workspace
    has_many :chatroom_members
    has_many :users, through: :chatroom_members
    has_many :chatroom_messages
end
