class Channel < ApplicationRecord
    belongs_to :workspace
    has_many :channel_members
    has_many :users, through: :channel_members
    has_many :channel_messages
end