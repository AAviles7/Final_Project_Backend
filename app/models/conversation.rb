class Conversation < ApplicationRecord
    belongs_to :sender, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
    has_many :direct_messages

    validates :sender, uniqueness: {scope: :receiver}
end
