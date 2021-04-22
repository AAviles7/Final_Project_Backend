class DirectMessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :conversation_id, :user_id, :created_at

  belongs_to :conversation
  belongs_to :user
  has_many :directmessage_likes

end
