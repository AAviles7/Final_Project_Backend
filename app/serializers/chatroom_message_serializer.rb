class ChatroomMessageSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :chatroom_id, :body, :created_at
  belongs_to :user
  belongs_to :chatroom
  has_many :chatmessage_likes
end
