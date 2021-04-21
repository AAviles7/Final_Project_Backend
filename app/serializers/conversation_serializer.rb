class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :receiver_id, :workspace_id, :created_at

  belongs_to :workspace
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  has_many :direct_messages
end
