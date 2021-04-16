class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :display_name, :bio, :phone_number
  has_many :workspace_members
  has_many :workspaces, through: :workspace_members
  has_many :chatroom_members
  has_many :chatrooms, through: :chatroom_members
  has_many :chatroom_messages, through: :chatroom_members
  has_many :sent_conversations, class_name: 'Conversation', foreign_key: 'sender_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'receiver_id'
  has_many :direct_messages
end
