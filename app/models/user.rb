class User < ApplicationRecord
    has_many :workspace_members
    has_many :workspaces, through: :workspace_members
    has_many :chatroom_members
    has_many :chatrooms, through: :chatroom_members
    has_many :chatroom_messages
    has_many :sent_conversations, class_name: 'Conversation', foreign_key: 'sender_id'
    has_many :received_conversations, class_name: 'Conversation', foreign_key: 'receiver_id'
    has_many :direct_messages
    has_many :chatmessage_likes

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end
