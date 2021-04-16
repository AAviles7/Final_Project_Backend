class ChatroomMessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :chatroom_id, :body, :created_at
  belongs_to :user
  belongs_to :chatroom
end
